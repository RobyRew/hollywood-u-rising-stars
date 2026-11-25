.class public final Lcom/google/android/gms/b/qb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/plus/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/n;Ljava/lang/String;)Lcom/google/android/gms/common/api/u;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingRemoteException"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/n;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/api/u",
            "<",
            "Lcom/google/android/gms/plus/d;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/b/qd;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/b/qd;-><init>(Lcom/google/android/gms/b/qb;Lcom/google/android/gms/common/api/n;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/n;->a(Lcom/google/android/gms/common/api/internal/c;)Lcom/google/android/gms/common/api/internal/c;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/android/gms/common/api/n;)Lcom/google/android/gms/plus/model/people/Person;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/android/gms/plus/e;->a(Lcom/google/android/gms/common/api/n;Z)Lcom/google/android/gms/plus/internal/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/plus/internal/h;->d()Lcom/google/android/gms/plus/model/people/Person;

    move-result-object v0

    return-object v0
.end method
