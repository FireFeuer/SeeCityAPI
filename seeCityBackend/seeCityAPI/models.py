from django.db import models

class Proposal(models.Model):
    login = models.CharField(max_length=45)
    name = models.CharField(max_length=90)
    description = models.CharField(max_length=1000)

    coordinates = models.CharField(max_length=1000)
    relevance = models.IntegerField()
    date_creation = models.DateField()

    is_delete = models.IntegerField()

    def __str__(self):
        return self.id_proposal
    
class Comment(models.Model):
    login = models.CharField(max_length=45)
    id_proposal = models.IntegerField()
    text = models.CharField(max_length=1000)
    date = models.DateField()
    availability = models.IntegerField()

    def __str__(self):
        return self.id_comment
    
class EvaluationProposal(models. Model):
    evaluation = models.IntegerField()
    login = models.CharField(max_length=45)
    id_proposal = models.IntegerField() 

    def __str__(self):
        return self.id_evaluation_proposal
    
class EvaluationComment(models. Model):
    evaluation = models.IntegerField()
    login = models.CharField(max_length=45)
    id_comment = models.IntegerField() 

    def __str__(self):
        return self.id_evaluation_comment
    
class ChangePassword(models. Model):
    email = models.CharField(max_length=500)
    new_password = models.CharField(max_length=45) 

class Complaints(models. Model):
    id_proposal = models.IntegerField()
    id_comment = models.IntegerField()
    text = models.CharField(max_length=400) 

class EmailVerificationCode(models.Model):
    email = models.EmailField()
    code = models.CharField(max_length=5)

class Notification(models. Model):
    login = models.CharField(max_length=45)
    text = models.CharField(max_length=1000)
    familiarity =  models.IntegerField()
    link = models.IntegerField()
