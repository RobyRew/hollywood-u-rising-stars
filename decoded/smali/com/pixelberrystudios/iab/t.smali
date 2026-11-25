.class Lcom/pixelberrystudios/iab/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/pixelberrystudios/iab/BaseIabActivity;


# direct methods
.method constructor <init>(Lcom/pixelberrystudios/iab/BaseIabActivity;Z)V
    .locals 0

    .prologue
    .line 380
    iput-object p1, p0, Lcom/pixelberrystudios/iab/t;->b:Lcom/pixelberrystudios/iab/BaseIabActivity;

    iput-boolean p2, p0, Lcom/pixelberrystudios/iab/t;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 382
    iget-object v0, p0, Lcom/pixelberrystudios/iab/t;->b:Lcom/pixelberrystudios/iab/BaseIabActivity;

    iget-object v0, v0, Lcom/pixelberrystudios/iab/BaseIabActivity;->k:Ljava/util/List;

    if-nez v0, :cond_1

    .line 383
    const-string/jumbo v0, "BaseIabActivity"

    const-string/jumbo v1, "No inventory SKUs to retrieve in querySkuInventoryAsync -> run() call"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :cond_0
    :goto_0
    return-void

    .line 386
    :cond_1
    iget-object v0, p0, Lcom/pixelberrystudios/iab/t;->b:Lcom/pixelberrystudios/iab/BaseIabActivity;

    iget-object v0, v0, Lcom/pixelberrystudios/iab/BaseIabActivity;->l:Lcom/pixelberrystudios/iab/ah;

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/pixelberrystudios/iab/t;->b:Lcom/pixelberrystudios/iab/BaseIabActivity;

    iget-object v1, p0, Lcom/pixelberrystudios/iab/t;->b:Lcom/pixelberrystudios/iab/BaseIabActivity;

    iget-object v1, v1, Lcom/pixelberrystudios/iab/BaseIabActivity;->l:Lcom/pixelberrystudios/iab/ah;

    .line 388
    invoke-interface {v1}, Lcom/pixelberrystudios/iab/ah;->getMarketType()Lcom/pixelberrystudios/iab/ai;

    move-result-object v1

    iget-boolean v2, p0, Lcom/pixelberrystudios/iab/t;->a:Z

    invoke-static {v0, v1, v2}, Lcom/pixelberrystudios/iab/BaseIabActivity;->a(Lcom/pixelberrystudios/iab/BaseIabActivity;Lcom/pixelberrystudios/iab/ai;Z)Lcom/pixelberrystudios/iab/al;

    move-result-object v0

    .line 389
    iget-object v1, p0, Lcom/pixelberrystudios/iab/t;->b:Lcom/pixelberrystudios/iab/BaseIabActivity;

    iget-object v1, v1, Lcom/pixelberrystudios/iab/BaseIabActivity;->l:Lcom/pixelberrystudios/iab/ah;

    iget-boolean v2, p0, Lcom/pixelberrystudios/iab/t;->a:Z

    iget-object v3, p0, Lcom/pixelberrystudios/iab/t;->b:Lcom/pixelberrystudios/iab/BaseIabActivity;

    iget-object v3, v3, Lcom/pixelberrystudios/iab/BaseIabActivity;->k:Ljava/util/List;

    invoke-interface {v1, v2, v3, v0}, Lcom/pixelberrystudios/iab/ah;->queryInventoryAsync(ZLjava/util/List;Lcom/pixelberrystudios/iab/al;)V

    goto :goto_0
.end method
