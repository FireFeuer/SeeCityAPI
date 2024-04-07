from django.db import models

class Proposal(models.Model):
    availability = models.IntegerField()
    login = models.CharField(max_length=45)
    name = models.CharField(max_length=90)
    description = models.CharField(max_length=1000)
    image = models.CharField(max_length=400)
    coordinates = models.CharField(max_length=1000)
    relevance = models.IntegerField()
    date_creation = models.DateTimeField()
    date_non_relevance = models.DateTimeField()
    is_delete = models.IntegerField()

    def __str__(self):
        return self.id_proposal
    
class Comment(models.Model):
    login = models.CharField(max_length=45)
    id_proposal = models.IntegerField()
    text = models.CharField(max_length=1000)
    date = models.DateTimeField()
    availability = models.IntegerField()

    def __str__(self):
        return self.id_comment
    
class EvaluationProposal(models. Model):
    evaluation = models.IntegerField()
    login = models.CharField(max_length=45)
    id_proposal = models.IntegerField() 

    def __str__(self):
        return self.id_evaluation_proposal