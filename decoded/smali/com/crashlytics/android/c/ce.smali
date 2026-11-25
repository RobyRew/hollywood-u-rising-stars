.class final Lcom/crashlytics/android/c/ce;
.super Lcom/crashlytics/android/c/cc;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:J


# direct methods
.method public constructor <init>(Lcom/crashlytics/android/c/a/a/e;)V
    .locals 2

    .prologue
    .line 396
    const/4 v0, 0x3

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/crashlytics/android/c/cc;

    invoke-direct {p0, v0, v1}, Lcom/crashlytics/android/c/cc;-><init>(I[Lcom/crashlytics/android/c/cc;)V

    .line 397
    iget-object v0, p1, Lcom/crashlytics/android/c/a/a/e;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/crashlytics/android/c/ce;->a:Ljava/lang/String;

    .line 398
    iget-object v0, p1, Lcom/crashlytics/android/c/a/a/e;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/crashlytics/android/c/ce;->b:Ljava/lang/String;

    .line 399
    iget-wide v0, p1, Lcom/crashlytics/android/c/a/a/e;->c:J

    iput-wide v0, p0, Lcom/crashlytics/android/c/ce;->c:J

    .line 400
    return-void
.end method


# virtual methods
.method public a()I
    .locals 4

    .prologue
    .line 404
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/crashlytics/android/c/ce;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/crashlytics/android/c/b;->a(Ljava/lang/String;)Lcom/crashlytics/android/c/b;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/crashlytics/android/c/f;->b(ILcom/crashlytics/android/c/b;)I

    move-result v0

    .line 405
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/crashlytics/android/c/ce;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/crashlytics/android/c/b;->a(Ljava/lang/String;)Lcom/crashlytics/android/c/b;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/crashlytics/android/c/f;->b(ILcom/crashlytics/android/c/b;)I

    move-result v1

    add-int/2addr v0, v1

    .line 406
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/crashlytics/android/c/ce;->c:J

    invoke-static {v1, v2, v3}, Lcom/crashlytics/android/c/f;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 407
    return v0
.end method

.method public a(Lcom/crashlytics/android/c/f;)V
    .locals 4

    .prologue
    .line 412
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/crashlytics/android/c/ce;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/crashlytics/android/c/b;->a(Ljava/lang/String;)Lcom/crashlytics/android/c/b;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/crashlytics/android/c/f;->a(ILcom/crashlytics/android/c/b;)V

    .line 413
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/crashlytics/android/c/ce;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/crashlytics/android/c/b;->a(Ljava/lang/String;)Lcom/crashlytics/android/c/b;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/crashlytics/android/c/f;->a(ILcom/crashlytics/android/c/b;)V

    .line 414
    const/4 v0, 0x3

    iget-wide v2, p0, Lcom/crashlytics/android/c/ce;->c:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/crashlytics/android/c/f;->a(IJ)V

    .line 415
    return-void
.end method
