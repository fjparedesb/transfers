<?php

/**
 * This is the model class for table "tbl_user".
 *
 * The followings are the available columns in table 'tbl_user':
 * @property string $idusuario
 * @property string $idcia
 * @property string $email
 * @property string $password
 * @property string $nombre
 * @property string $apellido
 * @property string $estatus
 * @property string $fecha_alta
 * @property string $hora_alta
 * @property string $fecha_upd
 * @property string $hora_upd
 */
class User extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'tbl_user';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('email, password, nombre, apellido', 'required'),
			array('email, password', 'length', 'max'=>132),
			array('nombre, apellido', 'length', 'max'=>32),
			array('estatus', 'length', 'max'=>1),
			array('hora_alta, hora_upd', 'length', 'max'=>8),
			array('fecha_alta, fecha_upd', 'safe'),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('idusuario, idcia, email, password, nombre, apellido, estatus, fecha_alta, hora_alta, fecha_upd, hora_upd', 'safe', 'on'=>'search'),
		);
	}

	/**
	 * @return array relational rules.
	 */
	public function relations()
	{
		// NOTE: you may need to adjust the relation name and the related
		// class name for the relations automatically generated below.
		return array(
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'idusuario' => 'Idusuario',
			'idcia' => 'IdCia',
			'email' => 'Email',
			'password' => 'Password',
			'nombre' => 'Nombre',
			'apellido' => 'Apellido',
			'estatus' => 'Estatus',
			'fecha_alta' => 'Fecha Alta',
			'hora_alta' => 'Hora Alta',
			'fecha_upd' => 'Fecha Upd',
			'hora_upd' => 'Hora Upd',
		);
	}

	/**
	 * Retrieves a list of models based on the current search/filter conditions.
	 *
	 * Typical usecase:
	 * - Initialize the model fields with values from filter form.
	 * - Execute this method to get CActiveDataProvider instance which will filter
	 * models according to data in model fields.
	 * - Pass data provider to CGridView, CListView or any similar widget.
	 *
	 * @return CActiveDataProvider the data provider that can return the models
	 * based on the search/filter conditions.
	 */
	public function search()
	{
		// @todo Please modify the following code to remove attributes that should not be searched.

		$criteria=new CDbCriteria;

		$criteria->compare('idusuario',$this->idusuario,true);
		$criteria->compare('idcia',$this->idcia,true);
		$criteria->compare('email',$this->email,true);
		$criteria->compare('password',$this->password,true);
		$criteria->compare('nombre',$this->nombre,true);
		$criteria->compare('apellido',$this->apellido,true);
		$criteria->compare('estatus',$this->estatus,true);
		$criteria->compare('fecha_alta',$this->fecha_alta,true);
		$criteria->compare('hora_alta',$this->hora_alta,true);
		$criteria->compare('fecha_upd',$this->fecha_upd,true);
		$criteria->compare('hora_upd',$this->hora_upd,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
	
	

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return User the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
