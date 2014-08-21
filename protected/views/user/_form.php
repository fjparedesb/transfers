<?php
/* @var $this UserController */
/* @var $model User */
/* @var $form CActiveForm */
?>

<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'user-form',
	// Please note: When you enable ajax validation, make sure the corresponding
	// controller action is handling ajax validation correctly.
	// There is a call to performAjaxValidation() commented in generated controller code.
	// See class documentation of CActiveForm for details on this.
	'enableAjaxValidation'=>false,
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'email'); ?>
		<?php echo $form->textField($model,'email',array('size'=>60,'maxlength'=>132)); ?>
		<?php echo $form->error($model,'email'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'password'); ?>
		<?php echo $form->passwordField($model,'password',array('size'=>60,'maxlength'=>132)); ?>
		<?php echo $form->error($model,'password'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'nombre'); ?>
		<?php echo $form->textField($model,'nombre',array('size'=>32,'maxlength'=>32)); ?>
		<?php echo $form->error($model,'nombre'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'apellido'); ?>
		<?php echo $form->textField($model,'apellido',array('size'=>32,'maxlength'=>32)); ?>
		<?php echo $form->error($model,'apellido'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'estatus'); ?>
		<?php echo $form->textField($model,'estatus',array('size'=>1,'maxlength'=>1)); ?>
		<?php echo $form->error($model,'estatus'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'fecha_alta'); ?>
		<?php echo $form->textField($model,'fecha_alta'); ?>
		<?php echo $form->error($model,'fecha_alta'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'hora_alta'); ?>
		<?php echo $form->textField($model,'hora_alta',array('size'=>8,'maxlength'=>8)); ?>
		<?php echo $form->error($model,'hora_alta'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'fecha_upd'); ?>
		<?php echo $form->textField($model,'fecha_upd'); ?>
		<?php echo $form->error($model,'fecha_upd'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'hora_upd'); ?>
		<?php echo $form->textField($model,'hora_upd',array('size'=>8,'maxlength'=>8)); ?>
		<?php echo $form->error($model,'hora_upd'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->