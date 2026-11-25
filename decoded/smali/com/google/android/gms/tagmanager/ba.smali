.class Lcom/google/android/gms/tagmanager/ba;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/tagmanager/ay;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/ay;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/ba;->a:Lcom/google/android/gms/tagmanager/ay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ba;->a:Lcom/google/android/gms/tagmanager/ay;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/ay;->a(Lcom/google/android/gms/tagmanager/ay;)Lcom/google/android/gms/tagmanager/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/w;->a()V

    return-void
.end method
