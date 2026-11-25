.class public abstract Lcom/google/android/gms/b/ra;
.super Lcom/google/android/gms/b/rg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/google/android/gms/b/ra",
        "<TM;>;>",
        "Lcom/google/android/gms/b/rg;"
    }
.end annotation


# instance fields
.field protected m:Lcom/google/android/gms/b/rc;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/b/rg;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/b/qy;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/b/ra;->m:Lcom/google/android/gms/b/rc;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/b/ra;->m:Lcom/google/android/gms/b/rc;

    invoke-virtual {v1}, Lcom/google/android/gms/b/rc;->a()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/b/ra;->m:Lcom/google/android/gms/b/rc;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/b/rc;->b(I)Lcom/google/android/gms/b/rd;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/b/rd;->a(Lcom/google/android/gms/b/qy;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected final a(Lcom/google/android/gms/b/qx;I)Z
    .locals 4

    invoke-virtual {p1}, Lcom/google/android/gms/b/qx;->q()I

    move-result v0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/b/qx;->b(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {p2}, Lcom/google/android/gms/b/rj;->b(I)I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/b/qx;->q()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/b/qx;->a(II)[B

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/b/ri;

    invoke-direct {v2, p2, v0}, Lcom/google/android/gms/b/ri;-><init>(I[B)V

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/google/android/gms/b/ra;->m:Lcom/google/android/gms/b/rc;

    if-nez v3, :cond_2

    new-instance v3, Lcom/google/android/gms/b/rc;

    invoke-direct {v3}, Lcom/google/android/gms/b/rc;-><init>()V

    iput-object v3, p0, Lcom/google/android/gms/b/ra;->m:Lcom/google/android/gms/b/rc;

    :goto_1
    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/b/rd;

    invoke-direct {v0}, Lcom/google/android/gms/b/rd;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/b/ra;->m:Lcom/google/android/gms/b/rc;

    invoke-virtual {v3, v1, v0}, Lcom/google/android/gms/b/rc;->a(ILcom/google/android/gms/b/rd;)V

    :cond_1
    invoke-virtual {v0, v2}, Lcom/google/android/gms/b/rd;->a(Lcom/google/android/gms/b/ri;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/b/ra;->m:Lcom/google/android/gms/b/rc;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/b/rc;->a(I)Lcom/google/android/gms/b/rd;

    move-result-object v0

    goto :goto_1
.end method

.method protected b()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/b/ra;->m:Lcom/google/android/gms/b/rc;

    if-eqz v1, :cond_0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/b/ra;->m:Lcom/google/android/gms/b/rc;

    invoke-virtual {v2}, Lcom/google/android/gms/b/rc;->a()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/b/ra;->m:Lcom/google/android/gms/b/rc;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/b/rc;->b(I)Lcom/google/android/gms/b/rd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/b/rd;->a()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :cond_1
    return v1
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/b/ra;->d()Lcom/google/android/gms/b/ra;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/google/android/gms/b/ra;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    invoke-super {p0}, Lcom/google/android/gms/b/rg;->e()Lcom/google/android/gms/b/rg;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/b/ra;

    invoke-static {p0, v0}, Lcom/google/android/gms/b/re;->a(Lcom/google/android/gms/b/ra;Lcom/google/android/gms/b/ra;)V

    return-object v0
.end method

.method public synthetic e()Lcom/google/android/gms/b/rg;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/b/ra;->d()Lcom/google/android/gms/b/ra;

    move-result-object v0

    return-object v0
.end method
