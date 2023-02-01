trigger LanguageCourseTrigger on Language_Course_Instructor__c (after insert, after update, after delete) {
    if (Trigger.isInsert) {
        EmailMissionSpecialist.sendMail('guillermojulian.gallegogonzalez@gmail.com', 'LanguageCourseTrigger', 'Un monitor ha sido insertado correctamente');
    }
    else if (Trigger.isDelete) {
         EmailMissionSpecialist.sendMail('guillermojulian.gallegogonzalez@gmail.com', 'LanguageCourseTrigger', 'Un monitor ha sido eliminado correctamente');
    }else if (Trigger.isUpdate){
        EmailMissionSpecialist.sendMail('guillermojulian.gallegogonzalez@gmail.com', 'LanguageCourseTrigger', 'Un monitor ha sido actualizado correctamente');
    }
}