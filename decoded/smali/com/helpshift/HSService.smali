.class public final Lcom/helpshift/HSService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field private static f:Lcom/helpshift/e/ae;


# instance fields
.field private a:Lcom/helpshift/al;

.field private b:Ljava/lang/Boolean;

.field private c:Lcom/helpshift/bs;

.field private final d:Landroid/os/IBinder;

.field private e:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    sput-object v0, Lcom/helpshift/HSService;->f:Lcom/helpshift/e/ae;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/helpshift/HSService;->a:Lcom/helpshift/al;

    .line 28
    iput-object v0, p0, Lcom/helpshift/HSService;->c:Lcom/helpshift/bs;

    .line 37
    new-instance v0, Lcom/helpshift/dw;

    invoke-direct {v0, p0}, Lcom/helpshift/dw;-><init>(Lcom/helpshift/HSService;)V

    iput-object v0, p0, Lcom/helpshift/HSService;->d:Landroid/os/IBinder;

    .line 77
    new-instance v0, Lcom/helpshift/dv;

    invoke-direct {v0, p0}, Lcom/helpshift/dv;-><init>(Lcom/helpshift/HSService;)V

    iput-object v0, p0, Lcom/helpshift/HSService;->e:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/helpshift/HSService;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/helpshift/HSService;->b:Ljava/lang/Boolean;

    return-object p1
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 130
    sget-object v0, Lcom/helpshift/HSService;->f:Lcom/helpshift/e/ae;

    if-eqz v0, :cond_0

    .line 131
    sget-object v0, Lcom/helpshift/HSService;->f:Lcom/helpshift/e/ae;

    invoke-virtual {v0}, Lcom/helpshift/e/ae;->a()V

    .line 133
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/helpshift/HSService;)Z
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/helpshift/HSService;->c()Z

    move-result v0

    return v0
.end method

.method static synthetic b()Lcom/helpshift/e/ae;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/helpshift/HSService;->f:Lcom/helpshift/e/ae;

    return-object v0
.end method

.method static synthetic b(Lcom/helpshift/HSService;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/helpshift/HSService;->b:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic c(Lcom/helpshift/HSService;)Lcom/helpshift/al;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/helpshift/HSService;->a:Lcom/helpshift/al;

    return-object v0
.end method

.method private c()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 55
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v0, v2, :cond_1

    .line 56
    iget-object v0, p0, Lcom/helpshift/HSService;->c:Lcom/helpshift/bs;

    if-nez v0, :cond_0

    .line 57
    invoke-static {}, Lcom/helpshift/bs;->a()Lcom/helpshift/bs;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/HSService;->c:Lcom/helpshift/bs;

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/helpshift/HSService;->c:Lcom/helpshift/bs;

    invoke-static {}, Lcom/helpshift/bs;->b()Z

    move-result v0

    .line 74
    :goto_0
    return v0

    .line 61
    :cond_1
    const-string/jumbo v0, "activity"

    invoke-virtual {p0, v0}, Lcom/helpshift/HSService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 62
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 63
    if-nez v0, :cond_2

    move v0, v1

    .line 64
    goto :goto_0

    .line 66
    :cond_2
    invoke-virtual {p0}, Lcom/helpshift/HSService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 67
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 68
    iget v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v5, 0x64

    if-ne v4, v5, :cond_3

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 70
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v1

    .line 74
    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/helpshift/HSService;->d:Landroid/os/IBinder;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/helpshift/HSService;->f:Lcom/helpshift/e/ae;

    if-eqz v0, :cond_0

    .line 122
    sget-object v0, Lcom/helpshift/HSService;->f:Lcom/helpshift/e/ae;

    invoke-virtual {v0}, Lcom/helpshift/e/ae;->c()V

    .line 123
    const/4 v0, 0x0

    sput-object v0, Lcom/helpshift/HSService;->f:Lcom/helpshift/e/ae;

    .line 126
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 127
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 99
    iget-object v0, p0, Lcom/helpshift/HSService;->a:Lcom/helpshift/al;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Lcom/helpshift/al;

    invoke-direct {v0, p0}, Lcom/helpshift/al;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/helpshift/HSService;->a:Lcom/helpshift/al;

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/helpshift/HSService;->b:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 104
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/HSService;->b:Ljava/lang/Boolean;

    .line 107
    :cond_1
    sget-object v0, Lcom/helpshift/HSService;->f:Lcom/helpshift/e/ae;

    if-nez v0, :cond_2

    .line 108
    new-instance v0, Lcom/helpshift/e/ae;

    iget-object v1, p0, Lcom/helpshift/HSService;->e:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/helpshift/e/ae;-><init>(Landroid/os/Handler;ILjava/lang/Boolean;Landroid/content/Context;)V

    sput-object v0, Lcom/helpshift/HSService;->f:Lcom/helpshift/e/ae;

    .line 109
    sget-object v0, Lcom/helpshift/HSService;->f:Lcom/helpshift/e/ae;

    invoke-virtual {v0}, Lcom/helpshift/e/ae;->b()V

    .line 112
    :cond_2
    const/4 v0, 0x2

    return v0
.end method
