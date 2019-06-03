from karista import db
import datetime

class Emails(db.Model):
    email_id    = db.Column(db.Integer, primary_key=True)
    email   = db.Column(db.Email, unique=False, nullable=False)
    date_creer  = db.Column(db.DateTime, nullable=False, default=datetime.datetime.utcnow)

    def __repr__(self):
        return self.email