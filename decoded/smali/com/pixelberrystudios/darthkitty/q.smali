.class Lcom/pixelberrystudios/darthkitty/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/GraphRequest$GraphJSONObjectCallback;


# instance fields
.field final synthetic a:Lcom/pixelberrystudios/darthkitty/p;


# direct methods
.method constructor <init>(Lcom/pixelberrystudios/darthkitty/p;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/pixelberrystudios/darthkitty/q;->a:Lcom/pixelberrystudios/darthkitty/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lorg/json/JSONObject;Lcom/facebook/GraphResponse;)V
    .locals 2

    .prologue
    .line 189
    invoke-virtual {p2}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 190
    new-instance v0, Lcom/pixelberrystudios/darthkitty/r;

    invoke-direct {v0, p0}, Lcom/pixelberrystudios/darthkitty/r;-><init>(Lcom/pixelberrystudios/darthkitty/q;)V

    invoke-static {v0}, Lcom/pixelberrystudios/darthkitty/DKRunnableQueue;->queueRunnable(Ljava/lang/Runnable;)V

    .line 204
    :goto_0
    return-void

    .line 197
    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 198
    new-instance v1, Lcom/pixelberrystudios/darthkitty/s;

    invoke-direct {v1, p0, v0}, Lcom/pixelberrystudios/darthkitty/s;-><init>(Lcom/pixelberrystudios/darthkitty/q;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/pixelberrystudios/darthkitty/DKRunnableQueue;->queueRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
