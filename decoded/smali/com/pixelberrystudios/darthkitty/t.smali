.class final Lcom/pixelberrystudios/darthkitty/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/GraphRequest$GraphJSONArrayCallback;


# instance fields
.field final synthetic a:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 251
    iput p1, p0, Lcom/pixelberrystudios/darthkitty/t;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lorg/json/JSONArray;Lcom/facebook/GraphResponse;)V
    .locals 3

    .prologue
    .line 254
    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    .line 255
    invoke-virtual {p2}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 256
    :goto_0
    new-instance v2, Lcom/pixelberrystudios/darthkitty/u;

    invoke-direct {v2, p0, v0, v1}, Lcom/pixelberrystudios/darthkitty/u;-><init>(Lcom/pixelberrystudios/darthkitty/t;ZLjava/lang/String;)V

    invoke-static {v2}, Lcom/pixelberrystudios/darthkitty/DKRunnableQueue;->queueRunnable(Ljava/lang/Runnable;)V

    .line 268
    return-void

    .line 255
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
