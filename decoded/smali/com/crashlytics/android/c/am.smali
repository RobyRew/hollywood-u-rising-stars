.class final Lcom/crashlytics/android/c/am;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/crashlytics/android/c/cl;

.field private final c:Lcom/crashlytics/android/c/cm;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/crashlytics/android/c/cl;Lcom/crashlytics/android/c/cm;)V
    .locals 0

    .prologue
    .line 1426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1427
    iput-object p1, p0, Lcom/crashlytics/android/c/am;->a:Landroid/content/Context;

    .line 1428
    iput-object p2, p0, Lcom/crashlytics/android/c/am;->b:Lcom/crashlytics/android/c/cl;

    .line 1429
    iput-object p3, p0, Lcom/crashlytics/android/c/am;->c:Lcom/crashlytics/android/c/cm;

    .line 1430
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1434
    iget-object v0, p0, Lcom/crashlytics/android/c/am;->a:Landroid/content/Context;

    invoke-static {v0}, Lb/a/a/a/a/b/m;->n(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1442
    :goto_0
    return-void

    .line 1438
    :cond_0
    invoke-static {}, Lb/a/a/a/f;->h()Lb/a/a/a/t;

    move-result-object v0

    const-string/jumbo v1, "CrashlyticsCore"

    const-string/jumbo v2, "Attempting to send crash report at time of crash..."

    invoke-interface {v0, v1, v2}, Lb/a/a/a/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1441
    iget-object v0, p0, Lcom/crashlytics/android/c/am;->c:Lcom/crashlytics/android/c/cm;

    iget-object v1, p0, Lcom/crashlytics/android/c/am;->b:Lcom/crashlytics/android/c/cl;

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/c/cm;->a(Lcom/crashlytics/android/c/cl;)Z

    goto :goto_0
.end method
