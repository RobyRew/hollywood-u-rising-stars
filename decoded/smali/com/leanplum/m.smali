.class final Lcom/leanplum/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/leanplum/m;


# instance fields
.field private b:Landroid/os/Handler;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/leanplum/m;->b:Landroid/os/Handler;

    return-void
.end method

.method static a()Lcom/leanplum/m;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/leanplum/m;->a:Lcom/leanplum/m;

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Lcom/leanplum/m;

    invoke-direct {v0}, Lcom/leanplum/m;-><init>()V

    sput-object v0, Lcom/leanplum/m;->a:Lcom/leanplum/m;

    .line 124
    :cond_0
    sget-object v0, Lcom/leanplum/m;->a:Lcom/leanplum/m;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/leanplum/m;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Runnable;J)Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/leanplum/m;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
