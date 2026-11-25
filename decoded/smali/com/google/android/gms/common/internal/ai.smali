.class public final Lcom/google/android/gms/common/internal/ai;
.super Lcom/google/android/gms/common/internal/ab;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/aa",
        "<TT;>.com/google/android/gms/common/internal/ab;"
    }
.end annotation


# instance fields
.field final synthetic e:Lcom/google/android/gms/common/internal/aa;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/aa;I)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/common/internal/ai;->e:Lcom/google/android/gms/common/internal/aa;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/common/internal/ab;-><init>(Lcom/google/android/gms/common/internal/aa;ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ai;->e:Lcom/google/android/gms/common/internal/aa;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/aa;->b(Lcom/google/android/gms/common/internal/aa;)Lcom/google/android/gms/common/api/s;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/s;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ai;->e:Lcom/google/android/gms/common/internal/aa;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/aa;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method protected a()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ai;->e:Lcom/google/android/gms/common/internal/aa;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/aa;->b(Lcom/google/android/gms/common/internal/aa;)Lcom/google/android/gms/common/api/s;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/common/ConnectionResult;->a:Lcom/google/android/gms/common/ConnectionResult;

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/s;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    const/4 v0, 0x1

    return v0
.end method
