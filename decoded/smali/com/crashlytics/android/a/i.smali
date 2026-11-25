.class Lcom/crashlytics/android/a/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Landroid/content/Context;

.field final b:Lb/a/a/a/a/f/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lb/a/a/a/a/f/a;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/crashlytics/android/a/i;->a:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/crashlytics/android/a/i;->b:Lb/a/a/a/a/f/a;

    .line 28
    return-void
.end method


# virtual methods
.method public a()Lcom/crashlytics/android/a/x;
    .locals 7

    .prologue
    .line 37
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 38
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "AnswersFilesManagerProvider cannot be called on the main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_0
    new-instance v0, Lcom/crashlytics/android/a/ag;

    invoke-direct {v0}, Lcom/crashlytics/android/a/ag;-><init>()V

    .line 42
    new-instance v1, Lb/a/a/a/a/b/aj;

    invoke-direct {v1}, Lb/a/a/a/a/b/aj;-><init>()V

    .line 43
    iget-object v2, p0, Lcom/crashlytics/android/a/i;->b:Lb/a/a/a/a/f/a;

    invoke-interface {v2}, Lb/a/a/a/a/f/a;->a()Ljava/io/File;

    move-result-object v2

    .line 44
    new-instance v3, Lb/a/a/a/a/d/i;

    iget-object v4, p0, Lcom/crashlytics/android/a/i;->a:Landroid/content/Context;

    const-string/jumbo v5, "session_analytics.tap"

    const-string/jumbo v6, "session_analytics_to_send"

    invoke-direct {v3, v4, v2, v5, v6}, Lb/a/a/a/a/d/i;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    new-instance v2, Lcom/crashlytics/android/a/x;

    iget-object v4, p0, Lcom/crashlytics/android/a/i;->a:Landroid/content/Context;

    invoke-direct {v2, v4, v0, v1, v3}, Lcom/crashlytics/android/a/x;-><init>(Landroid/content/Context;Lcom/crashlytics/android/a/ag;Lb/a/a/a/a/b/s;Lb/a/a/a/a/d/e;)V

    return-object v2
.end method
