.class final Lcom/crashlytics/android/c/aj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/crashlytics/android/c/cp;


# instance fields
.field private final a:Lb/a/a/a/q;

.field private final b:Lcom/crashlytics/android/c/ch;

.field private final c:Lb/a/a/a/a/g/o;


# direct methods
.method public constructor <init>(Lb/a/a/a/q;Lcom/crashlytics/android/c/ch;Lb/a/a/a/a/g/o;)V
    .locals 0

    .prologue
    .line 1382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1383
    iput-object p1, p0, Lcom/crashlytics/android/c/aj;->a:Lb/a/a/a/q;

    .line 1384
    iput-object p2, p0, Lcom/crashlytics/android/c/aj;->b:Lcom/crashlytics/android/c/ch;

    .line 1385
    iput-object p3, p0, Lcom/crashlytics/android/c/aj;->c:Lb/a/a/a/a/g/o;

    .line 1386
    return-void
.end method

.method static synthetic a(Lcom/crashlytics/android/c/aj;)Lcom/crashlytics/android/c/ch;
    .locals 1

    .prologue
    .line 1375
    iget-object v0, p0, Lcom/crashlytics/android/c/aj;->b:Lcom/crashlytics/android/c/ch;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 4

    .prologue
    .line 1390
    iget-object v0, p0, Lcom/crashlytics/android/c/aj;->a:Lb/a/a/a/q;

    invoke-virtual {v0}, Lb/a/a/a/q;->u()Lb/a/a/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/a/f;->b()Landroid/app/Activity;

    move-result-object v0

    .line 1391
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1393
    :cond_0
    const/4 v0, 0x1

    .line 1416
    :goto_0
    return v0

    .line 1396
    :cond_1
    new-instance v1, Lcom/crashlytics/android/c/ak;

    invoke-direct {v1, p0}, Lcom/crashlytics/android/c/ak;-><init>(Lcom/crashlytics/android/c/aj;)V

    .line 1404
    iget-object v2, p0, Lcom/crashlytics/android/c/aj;->c:Lb/a/a/a/a/g/o;

    invoke-static {v0, v2, v1}, Lcom/crashlytics/android/c/h;->a(Landroid/app/Activity;Lb/a/a/a/a/g/o;Lcom/crashlytics/android/c/l;)Lcom/crashlytics/android/c/h;

    move-result-object v1

    .line 1407
    new-instance v2, Lcom/crashlytics/android/c/al;

    invoke-direct {v2, p0, v1}, Lcom/crashlytics/android/c/al;-><init>(Lcom/crashlytics/android/c/aj;Lcom/crashlytics/android/c/h;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1414
    invoke-static {}, Lb/a/a/a/f;->h()Lb/a/a/a/t;

    move-result-object v0

    const-string/jumbo v2, "CrashlyticsCore"

    const-string/jumbo v3, "Waiting for user opt-in."

    invoke-interface {v0, v2, v3}, Lb/a/a/a/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1415
    invoke-virtual {v1}, Lcom/crashlytics/android/c/h;->b()V

    .line 1416
    invoke-virtual {v1}, Lcom/crashlytics/android/c/h;->c()Z

    move-result v0

    goto :goto_0
.end method
