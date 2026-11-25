.class Lcom/crashlytics/android/a/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/crashlytics/android/a/ad;

.field final synthetic b:Z

.field final synthetic c:Lcom/crashlytics/android/a/b;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/a/b;Lcom/crashlytics/android/a/ad;Z)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/crashlytics/android/a/h;->c:Lcom/crashlytics/android/a/b;

    iput-object p2, p0, Lcom/crashlytics/android/a/h;->a:Lcom/crashlytics/android/a/ad;

    iput-boolean p3, p0, Lcom/crashlytics/android/a/h;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/a/h;->c:Lcom/crashlytics/android/a/b;

    iget-object v0, v0, Lcom/crashlytics/android/a/b;->b:Lcom/crashlytics/android/a/aa;

    iget-object v1, p0, Lcom/crashlytics/android/a/h;->a:Lcom/crashlytics/android/a/ad;

    invoke-interface {v0, v1}, Lcom/crashlytics/android/a/aa;->a(Lcom/crashlytics/android/a/ad;)V

    .line 155
    iget-boolean v0, p0, Lcom/crashlytics/android/a/h;->b:Z

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/crashlytics/android/a/h;->c:Lcom/crashlytics/android/a/b;

    iget-object v0, v0, Lcom/crashlytics/android/a/b;->b:Lcom/crashlytics/android/a/aa;

    invoke-interface {v0}, Lcom/crashlytics/android/a/aa;->c()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 159
    :catch_0
    move-exception v0

    .line 160
    invoke-static {}, Lb/a/a/a/f;->h()Lb/a/a/a/t;

    move-result-object v1

    const-string/jumbo v2, "Answers"

    const-string/jumbo v3, "Failed to process event"

    invoke-interface {v1, v2, v3, v0}, Lb/a/a/a/t;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
