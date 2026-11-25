.class public final Lcom/helpshift/HSRetryService;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field private a:Lcom/helpshift/al;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/helpshift/HSRetryService;->a:Lcom/helpshift/al;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/helpshift/HSRetryService;->a:Lcom/helpshift/al;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Lcom/helpshift/al;

    invoke-direct {v0, p0}, Lcom/helpshift/al;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/helpshift/HSRetryService;->a:Lcom/helpshift/al;

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/helpshift/HSRetryService;->a:Lcom/helpshift/al;

    invoke-virtual {v0}, Lcom/helpshift/al;->u()V

    .line 18
    iget-object v0, p0, Lcom/helpshift/HSRetryService;->a:Lcom/helpshift/al;

    invoke-virtual {v0}, Lcom/helpshift/al;->v()V

    .line 20
    invoke-virtual {p0}, Lcom/helpshift/HSRetryService;->stopSelf()V

    .line 22
    const/4 v0, 0x2

    return v0
.end method
