.class final Lcom/pixelberrystudios/darthkitty/ao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 150
    new-instance v0, Lcom/pixelberrystudios/darthkitty/ap;

    invoke-direct {v0, p0}, Lcom/pixelberrystudios/darthkitty/ap;-><init>(Lcom/pixelberrystudios/darthkitty/ao;)V

    .line 160
    new-instance v1, Lcom/pixelberrystudios/darthkitty/aq;

    invoke-direct {v1, p0}, Lcom/pixelberrystudios/darthkitty/aq;-><init>(Lcom/pixelberrystudios/darthkitty/ao;)V

    .line 168
    invoke-static {v0, v1}, Lcom/helpshift/ea;->a(Landroid/os/Handler;Landroid/os/Handler;)V

    .line 169
    return-void
.end method
