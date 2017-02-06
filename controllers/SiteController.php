<?php

namespace app\controllers;

use Yii;
use yii\filters\AccessControl;
use yii\web\Controller;
use yii\filters\VerbFilter;
use app\models\LoginForm;
use app\models\ContactForm;
use app\modules\admin\models\Event;
use app\modules\admin\models\Show;
use app\modules\admin\models\Area;
use yii\data\Pagination;

class SiteController extends Controller
{
    /**
     * @inheritdoc
     */
    public function behaviors()
    {
        return [
            'access' => [
                'class' => AccessControl::className(),
                'only' => ['logout'],
                'rules' => [
                    [
                        'actions' => ['logout'],
                        'allow' => true,
                        'roles' => ['@'],
                    ],
                ],
            ],
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'logout' => ['post'],
                ],
            ],
        ];
    }

    /**
     * @inheritdoc
     */
    public function actions()
    {
        return [
            'error' => [
                'class' => 'yii\web\ErrorAction',
            ],
            'captcha' => [
                'class' => 'yii\captcha\CaptchaAction',
                'fixedVerifyCode' => YII_ENV_TEST ? 'testme' : null,
            ],
        ];
    }

    /**
     * Displays homepage.
     *
     * @return string
     */
    public function actionIndex()
    {
        $query = Event::find();
        $pagination = new Pagination([
            'defaultPageSize' => 6,
            'totalCount' => $query->count(),
        ]);
        $events = $query->orderBy(['date' => SORT_DESC])
            ->offset($pagination->offset)
            ->limit($pagination->limit)
            ->all();
        $this->view->title = "Home | Coming Events";
        return $this->render('index', ['events' => $events, 'pagination' => $pagination]);
    }

    public function actionAreaList()
    {
        $query = Area::find();
        $pagination = new Pagination([
            'defaultPageSize' => 6,
            'totalCount' => $query->count(),
        ]);
        $areas = $query->orderBy(['sorting' => SORT_ASC])
            ->offset($pagination->offset)
            ->limit($pagination->limit)
            ->all();
        $this->view->title = "Areas List";
        return $this->render('area-list', ['areas' => $areas, 'pagination' => $pagination]);
    }

    public function actionArea($id)
    {
        $area = Area::findOne($id);
        $query = Event::find()->where(['area_id' => $id]);
        $pagination = new Pagination([
            'defaultPageSize' => 6,
            'totalCount' => $query->count(),
        ]);
        $events = $query->orderBy(['date' => SORT_DESC])
            ->offset($pagination->offset)
            ->limit($pagination->limit)
            ->all();
        $this->view->title = "Area page with events";
        return $this->render('area', ['events' => $events, 'pagination' => $pagination, 'area' => $area]);
    }

    /**
     * Login action.
     *
     * @return string
     */
    public function actionLogin()
    {
        if (!Yii::$app->user->isGuest) {
            return $this->goHome();
        }

        $model = new LoginForm();
        if ($model->load(Yii::$app->request->post()) && $model->login()) {
            return $this->goBack();
        }
        return $this->render('login', [
            'model' => $model,
        ]);
    }

    /**
     * Logout action.
     *
     * @return string
     */
    public function actionLogout()
    {
        Yii::$app->user->logout();

        return $this->goHome();
    }

    /**
     * Displays contact page.
     *
     * @return string
     */
    public function actionContact()
    {
        $model = new ContactForm();
        if ($model->load(Yii::$app->request->post()) && $model->contact(Yii::$app->params['adminEmail'])) {
            Yii::$app->session->setFlash('contactFormSubmitted');

            return $this->refresh();
        }
        return $this->render('contact', [
            'model' => $model,
        ]);
    }

    /**
     * Displays about page.
     *
     * @return string
     */
    public function actionAbout()
    {
        return $this->render('about');
    }
}
