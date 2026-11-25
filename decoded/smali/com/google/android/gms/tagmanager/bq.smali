.class Lcom/google/android/gms/tagmanager/bq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/tagmanager/j;

.field final synthetic b:Lcom/google/android/gms/tagmanager/bo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/bo;Lcom/google/android/gms/tagmanager/j;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/bq;->b:Lcom/google/android/gms/tagmanager/bo;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/bq;->a:Lcom/google/android/gms/tagmanager/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/bq;->a:Lcom/google/android/gms/tagmanager/j;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/bq;->b:Lcom/google/android/gms/tagmanager/bo;

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/bo;->a(Lcom/google/android/gms/tagmanager/bo;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/j;->a(Ljava/util/List;)V

    return-void
.end method
