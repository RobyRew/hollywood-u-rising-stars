.class final Lcom/crashlytics/android/c/ca;
.super Lcom/crashlytics/android/c/cc;
.source "SourceFile"


# instance fields
.field a:Lcom/crashlytics/android/c/b;


# direct methods
.method public constructor <init>(Lcom/crashlytics/android/c/b;)V
    .locals 2

    .prologue
    .line 264
    const/4 v0, 0x6

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/crashlytics/android/c/cc;

    invoke-direct {p0, v0, v1}, Lcom/crashlytics/android/c/cc;-><init>(I[Lcom/crashlytics/android/c/cc;)V

    .line 265
    iput-object p1, p0, Lcom/crashlytics/android/c/ca;->a:Lcom/crashlytics/android/c/b;

    .line 266
    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .prologue
    .line 270
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/crashlytics/android/c/ca;->a:Lcom/crashlytics/android/c/b;

    invoke-static {v0, v1}, Lcom/crashlytics/android/c/f;->b(ILcom/crashlytics/android/c/b;)I

    move-result v0

    return v0
.end method

.method public a(Lcom/crashlytics/android/c/f;)V
    .locals 2

    .prologue
    .line 275
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/crashlytics/android/c/ca;->a:Lcom/crashlytics/android/c/b;

    invoke-virtual {p1, v0, v1}, Lcom/crashlytics/android/c/f;->a(ILcom/crashlytics/android/c/b;)V

    .line 276
    return-void
.end method
