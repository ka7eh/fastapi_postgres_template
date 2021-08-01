from celery import Celery

from app.core.config import get_settings

settings = get_settings()

celery_app = Celery("worker", broker=settings.RABBITMQ_URL)

celery_app.conf.task_routes = {"app.worker.test_celery": "main-queue"}
