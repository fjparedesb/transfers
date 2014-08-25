<?php
/* @var $this UserController */
/* @var $model User */
/* @var $form CActiveForm */
?>

<div class="wide form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

	<div class="row">
		<?php echo $form->label($model,'idusuario'); ?>
		<?php echo $form->textField($model,'idusuario',array('size'=>20,'maxlength'=>20)); ?>
	</div>
	
	<div class="row">
		<?php echo $form->label($model,'idcia'); ?>
		<?php echo $form->textField($model,'idcia',array('size'=>20,'maxlength'=>20)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'email'); ?>
		<?php echo $form->textField($model,'email',array('size'=>60,'maxlength'=>132)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'nombre'); ?>
		<?php echo $form->textField($model,'nombre',array('size'=>32,'maxlength'=>32)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'apellido'); ?>
		<?php echo $form->textField($model,'apellido',array('size'=>32,'maxlength'=>32)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'estatus'); ?>
		<?php echo $form->textField($model,'estatus',array('size'=>1,'maxlength'=>1)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'fecha_alta'); ?>
		<?php echo $form->textField($model,'fecha_alta'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'hora_alta'); ?>
		<?php echo $form->textField($model,'hora_alta',array('size'=>8,'maxlength'=>8)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'fecha_upd'); ?>
		<?php echo $form->textField($model,'fecha_upd'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'hora_upd'); ?>
		<?php echo $form->textField($model,'hora_upd',array('size'=>8,'maxlength'=>8)); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Search'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- search-form -->