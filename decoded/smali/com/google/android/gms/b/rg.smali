.class public abstract Lcom/google/android/gms/b/rg;
.super Ljava/lang/Object;


# instance fields
.field protected volatile B:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/b/rg;->B:I

    return-void
.end method

.method public static final a(Lcom/google/android/gms/b/rg;[BII)V
    .locals 3

    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/b/qy;->a([BII)Lcom/google/android/gms/b/qy;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/b/rg;->a(Lcom/google/android/gms/b/qy;)V

    invoke-virtual {v0}, Lcom/google/android/gms/b/qy;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Serializing to a byte array threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static final a(Lcom/google/android/gms/b/rg;)[B
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/b/rg;->g()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {p0, v0, v1, v2}, Lcom/google/android/gms/b/rg;->a(Lcom/google/android/gms/b/rg;[BII)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/b/qy;)V
    .locals 0

    return-void
.end method

.method protected b()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract b(Lcom/google/android/gms/b/qx;)Lcom/google/android/gms/b/rg;
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/b/rg;->e()Lcom/google/android/gms/b/rg;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/google/android/gms/b/rg;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/b/rg;

    return-object v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/b/rg;->B:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/b/rg;->g()I

    :cond_0
    iget v0, p0, Lcom/google/android/gms/b/rg;->B:I

    return v0
.end method

.method public g()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/b/rg;->b()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/b/rg;->B:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/b/rh;->a(Lcom/google/android/gms/b/rg;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
