.class Lcom/helpshift/cm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/helpshift/bu;


# direct methods
.method constructor <init>(Lcom/helpshift/bu;)V
    .locals 0

    .prologue
    .line 441
    iput-object p1, p0, Lcom/helpshift/cm;->a:Lcom/helpshift/bu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 444
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 445
    iget-object v0, p0, Lcom/helpshift/cm;->a:Lcom/helpshift/bu;

    new-instance v1, Lcom/helpshift/cn;

    invoke-direct {v1, p0}, Lcom/helpshift/cn;-><init>(Lcom/helpshift/cm;)V

    invoke-static {v0, v1}, Lcom/helpshift/bu;->a(Lcom/helpshift/bu;Landroid/os/Handler;)Landroid/os/Handler;

    .line 453
    new-instance v0, Lcom/helpshift/co;

    invoke-direct {v0, p0}, Lcom/helpshift/co;-><init>(Lcom/helpshift/cm;)V

    .line 467
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 468
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 469
    return-void
.end method
