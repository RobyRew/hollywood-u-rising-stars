.class Lcom/google/android/gms/tagmanager/at;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/au;


# instance fields
.field final synthetic a:Lcom/google/android/gms/tagmanager/ar;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/ar;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/at;->a:Lcom/google/android/gms/tagmanager/ar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/b/qt;Ljava/util/Set;Ljava/util/Set;Lcom/google/android/gms/tagmanager/ap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/b/qt;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/b/qs;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/b/qs;",
            ">;",
            "Lcom/google/android/gms/tagmanager/ap;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/b/qt;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p1}, Lcom/google/android/gms/b/qt;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p4}, Lcom/google/android/gms/tagmanager/ap;->e()Lcom/google/android/gms/tagmanager/an;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/b/qt;->c()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/b/qt;->f()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/tagmanager/an;->a(Ljava/util/List;Ljava/util/List;)V

    invoke-interface {p4}, Lcom/google/android/gms/tagmanager/ap;->f()Lcom/google/android/gms/tagmanager/an;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/b/qt;->d()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/b/qt;->g()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/tagmanager/an;->a(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
