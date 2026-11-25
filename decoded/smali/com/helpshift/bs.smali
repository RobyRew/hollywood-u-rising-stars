.class final Lcom/helpshift/bs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field private static a:Lcom/helpshift/bs;

.field private static b:Lcom/helpshift/al;

.field private static c:Lcom/helpshift/dx;

.field private static d:I

.field private static e:I

.field private static f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    sput-object v0, Lcom/helpshift/bs;->a:Lcom/helpshift/bs;

    .line 19
    sput-object v0, Lcom/helpshift/bs;->b:Lcom/helpshift/al;

    .line 20
    sput-object v0, Lcom/helpshift/bs;->c:Lcom/helpshift/dx;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/helpshift/bs;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/helpshift/bs;->a:Lcom/helpshift/bs;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/helpshift/bs;

    invoke-direct {v0}, Lcom/helpshift/bs;-><init>()V

    sput-object v0, Lcom/helpshift/bs;->a:Lcom/helpshift/bs;

    .line 31
    :cond_0
    sget-object v0, Lcom/helpshift/bs;->a:Lcom/helpshift/bs;

    return-object v0
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 35
    sget-boolean v0, Lcom/helpshift/bs;->f:Z

    return v0
.end method

.method static synthetic c()Lcom/helpshift/dx;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/helpshift/bs;->c:Lcom/helpshift/dx;

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 38
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 89
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 91
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 41
    sget-object v0, Lcom/helpshift/bs;->b:Lcom/helpshift/al;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/helpshift/al;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/helpshift/al;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/helpshift/bs;->b:Lcom/helpshift/al;

    .line 43
    sget-object v0, Lcom/helpshift/bs;->b:Lcom/helpshift/al;

    iget-object v0, v0, Lcom/helpshift/al;->a:Lcom/helpshift/dx;

    sput-object v0, Lcom/helpshift/bs;->c:Lcom/helpshift/dx;

    .line 46
    :cond_0
    sget v0, Lcom/helpshift/bs;->d:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/helpshift/bs;->d:I

    .line 48
    sget-boolean v0, Lcom/helpshift/bs;->f:Z

    if-nez v0, :cond_3

    .line 49
    sget-object v0, Lcom/helpshift/bs;->b:Lcom/helpshift/al;

    invoke-virtual {v0}, Lcom/helpshift/al;->h()V

    .line 50
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 51
    sget-object v0, Lcom/helpshift/bs;->b:Lcom/helpshift/al;

    invoke-virtual {v0}, Lcom/helpshift/al;->f()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/helpshift/HSReview;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 53
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 54
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 58
    :cond_1
    :try_start_0
    sget-object v0, Lcom/helpshift/bs;->b:Lcom/helpshift/al;

    new-instance v2, Lcom/helpshift/bt;

    invoke-direct {v2, p0}, Lcom/helpshift/bt;-><init>(Lcom/helpshift/bs;)V

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v0, v2, v3}, Lcom/helpshift/al;->b(Landroid/os/Handler;Landroid/os/Handler;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :goto_0
    invoke-static {v1}, Lcom/helpshift/eh;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 69
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/helpshift/HSRetryService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 72
    :cond_2
    sget-object v0, Lcom/helpshift/bs;->b:Lcom/helpshift/al;

    invoke-virtual {v0}, Lcom/helpshift/al;->t()V

    .line 73
    sget-object v0, Lcom/helpshift/bs;->b:Lcom/helpshift/al;

    invoke-virtual {v0}, Lcom/helpshift/al;->d()V

    .line 75
    :cond_3
    const/4 v0, 0x1

    sput-boolean v0, Lcom/helpshift/bs;->f:Z

    .line 76
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 65
    const-string/jumbo v2, "HelpShiftDebug"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/helpshift/ek;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 83
    sget v0, Lcom/helpshift/bs;->e:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/helpshift/bs;->e:I

    .line 84
    sget v0, Lcom/helpshift/bs;->d:I

    sget v1, Lcom/helpshift/bs;->e:I

    if-ne v0, v1, :cond_0

    .line 85
    const/4 v0, 0x0

    sput-boolean v0, Lcom/helpshift/bs;->f:Z

    .line 87
    :cond_0
    return-void
.end method
