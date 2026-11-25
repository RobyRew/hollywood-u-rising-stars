.class Lcom/pixelberrystudios/iab/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/pixelberrystudios/iab/ak;


# instance fields
.field final synthetic a:Lcom/pixelberrystudios/iab/BaseIabActivity;


# direct methods
.method constructor <init>(Lcom/pixelberrystudios/iab/BaseIabActivity;)V
    .locals 0

    .prologue
    .line 343
    iput-object p1, p0, Lcom/pixelberrystudios/iab/r;->a:Lcom/pixelberrystudios/iab/BaseIabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/pixelberrystudios/iab/am;)V
    .locals 3

    .prologue
    .line 345
    const-string/jumbo v0, "Setup finished."

    invoke-static {v0}, Lcom/pixelberrystudios/iab/BaseIabActivity;->i(Ljava/lang/String;)V

    .line 347
    invoke-virtual {p1}, Lcom/pixelberrystudios/iab/am;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/pixelberrystudios/iab/r;->a:Lcom/pixelberrystudios/iab/BaseIabActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Problem setting up in-app billing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pixelberrystudios/iab/BaseIabActivity;->h(Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Lcom/pixelberrystudios/iab/r;->a:Lcom/pixelberrystudios/iab/BaseIabActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/pixelberrystudios/iab/BaseIabActivity;->a(Lcom/pixelberrystudios/iab/BaseIabActivity;Z)Z

    .line 366
    :goto_0
    return-void

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/pixelberrystudios/iab/r;->a:Lcom/pixelberrystudios/iab/BaseIabActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/pixelberrystudios/iab/BaseIabActivity;->a(Lcom/pixelberrystudios/iab/BaseIabActivity;Z)Z

    .line 356
    const-string/jumbo v0, "Setup successful. Querying inventory."

    invoke-static {v0}, Lcom/pixelberrystudios/iab/BaseIabActivity;->i(Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Lcom/pixelberrystudios/iab/r;->a:Lcom/pixelberrystudios/iab/BaseIabActivity;

    iget-object v0, v0, Lcom/pixelberrystudios/iab/BaseIabActivity;->j:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->getRenderer()Lorg/cocos2dx/lib/Cocos2dxRenderer;

    move-result-object v0

    new-instance v1, Lcom/pixelberrystudios/iab/s;

    invoke-direct {v1, p0}, Lcom/pixelberrystudios/iab/s;-><init>(Lcom/pixelberrystudios/iab/r;)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->addPixelberryTask(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
