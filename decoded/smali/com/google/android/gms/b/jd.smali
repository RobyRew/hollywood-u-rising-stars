.class public abstract Lcom/google/android/gms/b/jd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/b/jb;


# instance fields
.field protected final a:Landroid/app/Activity;

.field protected final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/google/android/gms/b/jc;


# direct methods
.method protected constructor <init>(Landroid/app/Activity;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/bl;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/google/android/gms/b/jd;->a:Landroid/app/Activity;

    new-instance v1, Ljava/util/HashSet;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/bl;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {p3}, Lcom/google/android/gms/common/internal/bl;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/b/jd;->b:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/auth/api/signin/internal/IdpTokenType;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    invoke-static {p1}, Lcom/google/android/gms/common/internal/bl;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/bl;->a(Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.google.android.gms.auth.VERIFY_ASSERTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "idpTokenType"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v1, "idpToken"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "pendingToken"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/android/gms/b/jd;->a()Lcom/google/android/gms/auth/api/signin/zzd;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v2, "idProvider"

    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/zzd;->zzmT()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    return-object v0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/jd;->c:Ljava/lang/String;

    return-void
.end method

.method protected b()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/b/jd;->b:Ljava/util/Set;

    return-object v0
.end method

.method protected b(Lcom/google/android/gms/b/jc;)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/bl;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/b/jc;

    iput-object v0, p0, Lcom/google/android/gms/b/jd;->e:Lcom/google/android/gms/b/jc;

    return-void
.end method

.method protected b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/jd;->d:Ljava/lang/String;

    return-void
.end method

.method protected b(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/b/jc;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/b/jd;->a(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/b/jd;->b(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/google/android/gms/b/jd;->b(Lcom/google/android/gms/b/jc;)V

    return-void
.end method

.method protected c()Lcom/google/android/gms/b/jc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/jd;->e:Lcom/google/android/gms/b/jc;

    return-object v0
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/jd;->d:Ljava/lang/String;

    return-object v0
.end method
