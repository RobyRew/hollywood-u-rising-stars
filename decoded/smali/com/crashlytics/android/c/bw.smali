.class final Lcom/crashlytics/android/c/bw;
.super Lcom/crashlytics/android/c/cc;
.source "SourceFile"


# instance fields
.field private final a:F

.field private final b:I

.field private final c:Z

.field private final d:I

.field private final e:J

.field private final f:J


# direct methods
.method public constructor <init>(FIZIJJ)V
    .locals 3

    .prologue
    .line 225
    const/4 v0, 0x5

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/crashlytics/android/c/cc;

    invoke-direct {p0, v0, v1}, Lcom/crashlytics/android/c/cc;-><init>(I[Lcom/crashlytics/android/c/cc;)V

    .line 227
    iput p1, p0, Lcom/crashlytics/android/c/bw;->a:F

    .line 228
    iput p2, p0, Lcom/crashlytics/android/c/bw;->b:I

    .line 229
    iput-boolean p3, p0, Lcom/crashlytics/android/c/bw;->c:Z

    .line 230
    iput p4, p0, Lcom/crashlytics/android/c/bw;->d:I

    .line 231
    iput-wide p5, p0, Lcom/crashlytics/android/c/bw;->e:J

    .line 232
    iput-wide p7, p0, Lcom/crashlytics/android/c/bw;->f:J

    .line 233
    return-void
.end method


# virtual methods
.method public a()I
    .locals 4

    .prologue
    .line 237
    const/4 v0, 0x0

    .line 238
    const/4 v1, 0x1

    iget v2, p0, Lcom/crashlytics/android/c/bw;->a:F

    invoke-static {v1, v2}, Lcom/crashlytics/android/c/f;->b(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 239
    const/4 v1, 0x2

    iget v2, p0, Lcom/crashlytics/android/c/bw;->b:I

    invoke-static {v1, v2}, Lcom/crashlytics/android/c/f;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 240
    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/crashlytics/android/c/bw;->c:Z

    invoke-static {v1, v2}, Lcom/crashlytics/android/c/f;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 241
    const/4 v1, 0x4

    iget v2, p0, Lcom/crashlytics/android/c/bw;->d:I

    invoke-static {v1, v2}, Lcom/crashlytics/android/c/f;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 242
    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/crashlytics/android/c/bw;->e:J

    invoke-static {v1, v2, v3}, Lcom/crashlytics/android/c/f;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 243
    const/4 v1, 0x6

    iget-wide v2, p0, Lcom/crashlytics/android/c/bw;->f:J

    invoke-static {v1, v2, v3}, Lcom/crashlytics/android/c/f;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 244
    return v0
.end method

.method public a(Lcom/crashlytics/android/c/f;)V
    .locals 4

    .prologue
    .line 249
    const/4 v0, 0x1

    iget v1, p0, Lcom/crashlytics/android/c/bw;->a:F

    invoke-virtual {p1, v0, v1}, Lcom/crashlytics/android/c/f;->a(IF)V

    .line 250
    const/4 v0, 0x2

    iget v1, p0, Lcom/crashlytics/android/c/bw;->b:I

    invoke-virtual {p1, v0, v1}, Lcom/crashlytics/android/c/f;->c(II)V

    .line 251
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/crashlytics/android/c/bw;->c:Z

    invoke-virtual {p1, v0, v1}, Lcom/crashlytics/android/c/f;->a(IZ)V

    .line 252
    const/4 v0, 0x4

    iget v1, p0, Lcom/crashlytics/android/c/bw;->d:I

    invoke-virtual {p1, v0, v1}, Lcom/crashlytics/android/c/f;->a(II)V

    .line 253
    const/4 v0, 0x5

    iget-wide v2, p0, Lcom/crashlytics/android/c/bw;->e:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/crashlytics/android/c/f;->a(IJ)V

    .line 254
    const/4 v0, 0x6

    iget-wide v2, p0, Lcom/crashlytics/android/c/bw;->f:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/crashlytics/android/c/f;->a(IJ)V

    .line 255
    return-void
.end method
