.class final Lcom/pixelberrystudios/darthkitty/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/FacebookCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/FacebookCallback",
        "<",
        "Lcom/facebook/login/LoginResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/login/LoginResult;)V
    .locals 1

    .prologue
    .line 107
    new-instance v0, Lcom/pixelberrystudios/darthkitty/m;

    invoke-direct {v0, p0}, Lcom/pixelberrystudios/darthkitty/m;-><init>(Lcom/pixelberrystudios/darthkitty/l;)V

    invoke-static {v0}, Lcom/pixelberrystudios/darthkitty/DKRunnableQueue;->queueRunnable(Ljava/lang/Runnable;)V

    .line 112
    return-void
.end method

.method public onCancel()V
    .locals 1

    .prologue
    .line 116
    new-instance v0, Lcom/pixelberrystudios/darthkitty/n;

    invoke-direct {v0, p0}, Lcom/pixelberrystudios/darthkitty/n;-><init>(Lcom/pixelberrystudios/darthkitty/l;)V

    invoke-static {v0}, Lcom/pixelberrystudios/darthkitty/DKRunnableQueue;->queueRunnable(Ljava/lang/Runnable;)V

    .line 121
    return-void
.end method

.method public onError(Lcom/facebook/FacebookException;)V
    .locals 1

    .prologue
    .line 125
    new-instance v0, Lcom/pixelberrystudios/darthkitty/o;

    invoke-direct {v0, p0}, Lcom/pixelberrystudios/darthkitty/o;-><init>(Lcom/pixelberrystudios/darthkitty/l;)V

    invoke-static {v0}, Lcom/pixelberrystudios/darthkitty/DKRunnableQueue;->queueRunnable(Ljava/lang/Runnable;)V

    .line 130
    return-void
.end method

.method public synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 104
    check-cast p1, Lcom/facebook/login/LoginResult;

    invoke-virtual {p0, p1}, Lcom/pixelberrystudios/darthkitty/l;->a(Lcom/facebook/login/LoginResult;)V

    return-void
.end method
