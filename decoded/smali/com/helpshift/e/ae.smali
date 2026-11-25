.class public final Lcom/helpshift/e/ae;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/Runnable;

.field private b:Landroid/os/Handler;

.field private c:F

.field private d:F

.field private e:F

.field private f:Ljava/lang/Boolean;

.field private g:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/os/Handler;ILjava/lang/Boolean;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const v0, 0x476a6000    # 60000.0f

    iput v0, p0, Lcom/helpshift/e/ae;->e:F

    .line 20
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/e/ae;->f:Ljava/lang/Boolean;

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/helpshift/e/ae;->g:Landroid/content/Context;

    .line 56
    new-instance v0, Lcom/helpshift/e/af;

    invoke-direct {v0, p0}, Lcom/helpshift/e/af;-><init>(Lcom/helpshift/e/ae;)V

    iput-object v0, p0, Lcom/helpshift/e/ae;->a:Ljava/lang/Runnable;

    .line 76
    iput-object p1, p0, Lcom/helpshift/e/ae;->b:Landroid/os/Handler;

    .line 77
    mul-int/lit16 v0, p2, 0x3e8

    int-to-float v0, v0

    iput v0, p0, Lcom/helpshift/e/ae;->c:F

    .line 78
    mul-int/lit16 v0, p2, 0x3e8

    int-to-float v0, v0

    iput v0, p0, Lcom/helpshift/e/ae;->d:F

    .line 79
    iput-object p3, p0, Lcom/helpshift/e/ae;->f:Ljava/lang/Boolean;

    .line 80
    iput-object p4, p0, Lcom/helpshift/e/ae;->g:Landroid/content/Context;

    .line 81
    return-void
.end method

.method static synthetic a(Lcom/helpshift/e/ae;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/helpshift/e/ae;->b:Landroid/os/Handler;

    return-object v0
.end method

.method private static a(Landroid/content/Intent;)Ljava/lang/Float;
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 32
    const-string/jumbo v0, "level"

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 33
    const-string/jumbo v1, "scale"

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 35
    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 45
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 46
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 47
    const-string/jumbo v0, "Unknown"

    .line 48
    if-eqz v1, :cond_0

    .line 49
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    .line 51
    :cond_0
    return-object v0
.end method

.method static synthetic b(Lcom/helpshift/e/ae;)F
    .locals 1

    .prologue
    .line 14
    iget v0, p0, Lcom/helpshift/e/ae;->c:F

    return v0
.end method

.method static synthetic c(Lcom/helpshift/e/ae;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/helpshift/e/ae;->f:Ljava/lang/Boolean;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 84
    iget v0, p0, Lcom/helpshift/e/ae;->d:F

    iput v0, p0, Lcom/helpshift/e/ae;->c:F

    .line 85
    iget-object v0, p0, Lcom/helpshift/e/ae;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/helpshift/e/ae;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 86
    iget-object v0, p0, Lcom/helpshift/e/ae;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/helpshift/e/ae;->a:Ljava/lang/Runnable;

    iget v2, p0, Lcom/helpshift/e/ae;->c:F

    float-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 87
    return-void
.end method

.method public a(F)V
    .locals 5

    .prologue
    const v4, 0x3fcf1aa0    # 1.618f

    .line 98
    iget v0, p0, Lcom/helpshift/e/ae;->e:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 99
    iget v0, p0, Lcom/helpshift/e/ae;->d:F

    add-float/2addr v0, p1

    mul-float/2addr v0, v4

    .line 102
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 103
    iget-object v2, p0, Lcom/helpshift/e/ae;->g:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Lcom/pixelberrystudios/hwuandroid/ModernCompat;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    move-result-object v1

    .line 104
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1}, Lcom/helpshift/e/ae;->a(Landroid/content/Intent;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float v1, v2, v1

    mul-float/2addr v0, v1

    .line 109
    :try_start_0
    iget-object v1, p0, Lcom/helpshift/e/ae;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/helpshift/e/ae;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "WIFI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    .line 110
    mul-float/2addr v0, v4

    .line 116
    :cond_0
    :goto_0
    iget v1, p0, Lcom/helpshift/e/ae;->e:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    .line 117
    iget v0, p0, Lcom/helpshift/e/ae;->e:F

    iput v0, p0, Lcom/helpshift/e/ae;->c:F

    .line 122
    :cond_1
    :goto_1
    return-void

    .line 112
    :catch_0
    move-exception v1

    .line 113
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "No permission for Network Access"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 119
    :cond_2
    iput v0, p0, Lcom/helpshift/e/ae;->c:F

    goto :goto_1
.end method

.method public b()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/helpshift/e/ae;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 91
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/helpshift/e/ae;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/helpshift/e/ae;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 95
    return-void
.end method
