.class public abstract Lcom/google/android/gms/measurement/k;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/android/gms/measurement/k;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final a:Lcom/google/android/gms/measurement/h;

.field private final b:Lcom/google/android/gms/measurement/l;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/measurement/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/measurement/l;Lcom/google/android/gms/b/kz;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/bl;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/k;->b:Lcom/google/android/gms/measurement/l;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/k;->c:Ljava/util/List;

    new-instance v0, Lcom/google/android/gms/measurement/h;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/measurement/h;-><init>(Lcom/google/android/gms/measurement/k;Lcom/google/android/gms/b/kz;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/h;->k()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/k;->a:Lcom/google/android/gms/measurement/h;

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/measurement/h;)V
    .locals 0

    return-void
.end method

.method protected b(Lcom/google/android/gms/measurement/h;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/k;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/i;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/measurement/i;->a(Lcom/google/android/gms/measurement/k;Lcom/google/android/gms/measurement/h;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public i()Lcom/google/android/gms/measurement/h;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/k;->a:Lcom/google/android/gms/measurement/h;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/h;->a()Lcom/google/android/gms/measurement/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/k;->b(Lcom/google/android/gms/measurement/h;)V

    return-object v0
.end method

.method public j()Lcom/google/android/gms/measurement/h;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/k;->a:Lcom/google/android/gms/measurement/h;

    return-object v0
.end method

.method public k()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/measurement/s;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/k;->a:Lcom/google/android/gms/measurement/h;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/h;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected l()Lcom/google/android/gms/measurement/l;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/k;->b:Lcom/google/android/gms/measurement/l;

    return-object v0
.end method
