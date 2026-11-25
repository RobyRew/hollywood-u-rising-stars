.class Lcom/helpshift/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/helpshift/m;


# direct methods
.method constructor <init>(Lcom/helpshift/m;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/helpshift/n;->a:Lcom/helpshift/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 69
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 70
    iget-object v0, p0, Lcom/helpshift/n;->a:Lcom/helpshift/m;

    new-instance v1, Lcom/helpshift/o;

    invoke-direct {v1, p0}, Lcom/helpshift/o;-><init>(Lcom/helpshift/n;)V

    invoke-static {v0, v1}, Lcom/helpshift/m;->a(Lcom/helpshift/m;Landroid/os/Handler;)Landroid/os/Handler;

    .line 80
    new-instance v0, Lcom/helpshift/q;

    invoke-direct {v0, p0}, Lcom/helpshift/q;-><init>(Lcom/helpshift/n;)V

    .line 93
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 94
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 95
    return-void
.end method
