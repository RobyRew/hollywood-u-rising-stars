.class abstract Lcom/google/android/gms/b/qe;
.super Lcom/google/android/gms/plus/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/plus/h",
        "<",
        "Lcom/google/android/gms/plus/d;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/api/n;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/plus/h;-><init>(Lcom/google/android/gms/common/api/n;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/common/api/n;Lcom/google/android/gms/b/qc;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/b/qe;-><init>(Lcom/google/android/gms/common/api/n;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/plus/d;
    .locals 1

    new-instance v0, Lcom/google/android/gms/b/qf;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/b/qf;-><init>(Lcom/google/android/gms/b/qe;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

.method public synthetic b(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/z;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/b/qe;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/plus/d;

    move-result-object v0

    return-object v0
.end method
