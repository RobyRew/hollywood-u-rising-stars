.class Lcom/google/android/gms/measurement/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/measurement/h;

.field final synthetic b:Lcom/google/android/gms/measurement/l;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/l;Lcom/google/android/gms/measurement/h;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/m;->b:Lcom/google/android/gms/measurement/l;

    iput-object p2, p0, Lcom/google/android/gms/measurement/m;->a:Lcom/google/android/gms/measurement/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/m;->a:Lcom/google/android/gms/measurement/h;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/h;->h()Lcom/google/android/gms/measurement/k;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/m;->a:Lcom/google/android/gms/measurement/h;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/k;->a(Lcom/google/android/gms/measurement/h;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/m;->b:Lcom/google/android/gms/measurement/l;

    invoke-static {v0}, Lcom/google/android/gms/measurement/l;->a(Lcom/google/android/gms/measurement/l;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/r;

    iget-object v2, p0, Lcom/google/android/gms/measurement/m;->a:Lcom/google/android/gms/measurement/h;

    invoke-interface {v0, v2}, Lcom/google/android/gms/measurement/r;->a(Lcom/google/android/gms/measurement/h;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/m;->b:Lcom/google/android/gms/measurement/l;

    iget-object v1, p0, Lcom/google/android/gms/measurement/m;->a:Lcom/google/android/gms/measurement/h;

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/l;->a(Lcom/google/android/gms/measurement/l;Lcom/google/android/gms/measurement/h;)V

    return-void
.end method
