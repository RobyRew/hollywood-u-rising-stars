.class public abstract Lcom/pixelberrystudios/iab/BaseIabActivity;
.super Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;
.source "SourceFile"

# interfaces
.implements Lcom/pixelberrystudios/iab/aj;


# static fields
.field static i:Lcom/pixelberrystudios/iab/BaseIabActivity;


# instance fields
.field private e:Z

.field private f:Z

.field private g:Z

.field protected j:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

.field protected k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected l:Lcom/pixelberrystudios/iab/ah;

.field protected m:Lcom/pixelberrystudios/iab/Inventory;

.field protected n:Lcom/pixelberrystudios/iab/Inventory;

.field protected o:Lcom/pixelberrystudios/iab/al;

.field protected p:Lcom/pixelberrystudios/iab/al;

.field protected q:Lcom/pixelberrystudios/iab/an;

.field protected r:Lcom/pixelberrystudios/iab/af;

.field protected s:Lcom/pixelberrystudios/iab/af;


# direct methods
.method protected constructor <init>(I)V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;-><init>(I)V

    .line 429
    new-instance v0, Lcom/pixelberrystudios/iab/u;

    invoke-direct {v0, p0}, Lcom/pixelberrystudios/iab/u;-><init>(Lcom/pixelberrystudios/iab/BaseIabActivity;)V

    iput-object v0, p0, Lcom/pixelberrystudios/iab/BaseIabActivity;->o:Lcom/pixelberrystudios/iab/al;

    .line 452
    new-instance v0, Lcom/pixelberrystudios/iab/h;

    invoke-direct {v0, p0}, Lcom/pixelberrystudios/iab/h;-><init>(Lcom/pixelberrystudios/iab/BaseIabActivity;)V

    iput-object v0, p0, Lcom/pixelberrystudios/iab/BaseIabActivity;->p:Lcom/pixelberrystudios/iab/al;

    .line 527
    new-instance v0, Lcom/pixelberrystudios/iab/i;

    invoke-direct {v0, p0}, Lcom/pixelberrystudios/iab/i;-><init>(Lcom/pixelberrystudios/iab/BaseIabActivity;)V

    iput-object v0, p0, Lcom/pixelberrystudios/iab/BaseIabActivity;->q:Lcom/pixelberrystudios/iab/an;

    .line 568
    new-instance v0, Lcom/pixelberrystudios/iab/j;

    invoke-direct {v0, p0}, Lcom/pixelberrystudios/iab/j;-><init>(Lcom/pixelberrystudios/iab/BaseIabActivity;)V

    iput-object v0, p0, Lcom/pixelberrystudios/iab/BaseIabActivity;->r:Lcom/pixelberrystudios/iab/af;

    .line 588
    new-instance v0, Lcom/pixelberrystudios/iab/k;

    invoke-direct {v0, p0}, Lcom/pixelberrystudios/iab/k;-><init>(Lcom/pixelberrystudios/iab/BaseIabActivity;)V

    iput-object v0, p0, Lcom/pixelberrystudios/iab/BaseIabActivity;->s:Lcom/pixelberrystudios/iab/af;

    .line 62
    return-void
.end method

.method static synthetic a(Lcom/pixelberrystudios/iab/BaseIabActivity;Lcom/pixelberrystudios/iab/ai;Z)Lcom/pixelberrystudios/iab/al;
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/pixelberrystudios/iab/BaseIabActivity;->a(Lcom/pixelberrystudios/iab/ai;Z)Lcom/pixelberrystudios/iab/al;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/pixelberrystudios/iab/ai;Z)Lcom/pixelberrystudios/iab/al;
    .locals 2

    .prologue
    .line 398
    sget-object v0, Lcom/pixelberrystudios/iab/l;->a:[I

    invoke-virtual {p1}, Lcom/pixelberrystudios/iab/ai;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 404
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 400
    :pswitch_0
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/pixelberrystudios/iab/BaseIabActivity;->o:Lcom/pixelberrystudios/iab/al;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/pixelberrystudios/iab/BaseIabActivity;->p:Lcom/pixelberrystudios/iab/al;

    goto :goto_0

    .line 402
    :pswitch_1
    iget-object v0, p0, Lcom/pixelberrystudios/iab/BaseIabActivity;->o:Lcom/pixelberrystudios/iab/al;

    goto :goto_0

    .line 398
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/pixelberrystudios/iab/BaseIabActivity;Z)Z
    .locals 0

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/pixelberrystudios/iab/BaseIabActivity;->g:Z

    return p1
.end method

.method static synthetic b(Lcom/pixelberrystudios/iab/BaseIabActivity;Z)Z
    .locals 0

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/pixelberrystudios/iab/BaseIabActivity;->f:Z

    return p1
.end method

.method static synthetic c(Lcom/pixelberrystudios/iab/BaseIabActivity;Z)Z
    .locals 0

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/pixelberrystudios/iab/BaseIabActivity;->e:Z

    return p1
.end method

.method public static consumeSku(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 121
    sget-object v0, Lcom/pixelberrystudios/iab/BaseIabActivity;->i:Lcom/pixelberrystudios/iab/BaseIabActivity;

    new-instance v1, Lcom/pixelberrystudios/iab/m;

    invoke-direct {v1, p0}, Lcom/pixelberrystudios/iab/m;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/pixelberrystudios/iab/BaseIabActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 126
    return-void
.end method

.method public static getInstance()Lcom/pixelberrystudios/iab/BaseIabActivity;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/pixelberrystudios/iab/BaseIabActivity;->i:Lcom/pixelberrystudios/iab/BaseIabActivity;

    return-object v0
.end method

.method public static getPurchaseInventory()Lcom/pixelberrystudios/iab/Inventory;
    .locals 2

    .prologue
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getPurchaseInventory: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/pixelberrystudios/iab/BaseIabActivity;->i:Lcom/pixelberrystudios/iab/BaseIabActivity;

    iget-object v1, v1, Lcom/pixelberrystudios/iab/BaseIabActivity;->m:Lcom/pixelberrystudios/iab/Inventory;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pixelberrystudios/iab/BaseIabActivity;->i(Ljava/lang/String;)V

    .line 90
    sget-object v0, Lcom/pixelberrystudios/iab/BaseIabActivity;->i:Lcom/pixelberrystudios/iab/BaseIabActivity;

    iget-object v0, v0, Lcom/pixelberrystudios/iab/BaseIabActivity;->m:Lcom/pixelberrystudios/iab/Inventory;

    return-object v0
.end method

.method public static getSkuInventory()Lcom/pixelberrystudios/iab/Inventory;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/pixelberrystudios/iab/BaseIabActivity;->i:Lcom/pixelberrystudios/iab/BaseIabActivity;

    iget-object v0, v0, Lcom/pixelberrystudios/iab/BaseIabActivity;->n:Lcom/pixelberrystudios/iab/Inventory;

    return-object v0
.end method

.method public static hasFetchedPurchaseInventory()Z
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/pixelberrystudios/iab/BaseIabActivity;->i:Lcom/pixelberrystudios/iab/BaseIabActivity;

    iget-boolean v0, v0, Lcom/pixelberrystudios/iab/BaseIabActivity;->e:Z

    return v0
.end method

.method public static hasFetchedSkuInventory()Z
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/pixelberrystudios/iab/BaseIabActivity;->i:Lcom/pixelberrystudios/iab/BaseIabActivity;

    iget-boolean v0, v0, Lcom/pixelberrystudios/iab/BaseIabActivity;->f:Z

    return v0
.end method

.method public static hasPurchaseInventory()Z
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/pixelberrystudios/iab/BaseIabActivity;->i:Lcom/pixelberrystudios/iab/BaseIabActivity;

    iget-object v0, v0, Lcom/pixelberrystudios/iab/BaseIabActivity;->m:Lcom/pixelberrystudios/iab/Inventory;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasSkuInventory()Z
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/pixelberrystudios/iab/BaseIabActivity;->i:Lcom/pixelberrystudios/iab/BaseIabActivity;

    iget-object v0, v0, Lcom/pixelberrystudios/iab/BaseIabActivity;->n:Lcom/pixelberrystudios/iab/Inventory;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static i(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 674
    return-void
.end method

.method public static isIabSupported()Z
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/pixelberrystudios/iab/BaseIabActivity;->i:Lcom/pixelberrystudios/iab/BaseIabActivity;

    iget-boolean v0, v0, Lcom/pixelberrystudios/iab/BaseIabActivity;->g:Z

    return v0
.end method

.method private k()V
    .locals 2

    .prologue
    .line 320
    iget-object v0, p0, Lcom/pixelberrystudios/iab/BaseIabActivity;->j:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->getRenderer()Lorg/cocos2dx/lib/Cocos2dxRenderer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/iab/BaseIabActivity;->a(Lorg/cocos2dx/lib/Cocos2dxRenderer;)V

    .line 322
    iget-boolean v0, p0, Lcom/pixelberrystudios/iab/BaseIabActivity;->d:Z

    if-nez v0, :cond_1

    .line 323
    invoke-virtual {p0}, Lcom/pixelberrystudios/iab/BaseIabActivity;->s()Ljava/lang/String;

    move-result-object v0

    .line 325
    const-string/jumbo v1, "Creating IAB helper."

    invoke-static {v1}, Lcom/pixelberrystudios/iab/BaseIabActivity;->i(Ljava/lang/String;)V

    .line 326
    iget-object v1, p0, Lcom/pixelberrystudios/iab/BaseIabActivity;->l:Lcom/pixelberrystudios/iab/ah;

    if-nez v1, :cond_0

    .line 327
    new-instance v1, Lcom/pixelberrystudios/iab/w;

    invoke-direct {v1, p0, v0}, Lcom/pixelberrystudios/iab/w;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/pixelberrystudios/iab/BaseIabActivity;->l:Lcom/pixelberrystudios/iab/ah;

    .line 342
    :cond_0
    :goto_0
    const-string/jumbo v0, "Starting setup."

    invoke-static {v0}, Lcom/pixelberrystudios/iab/BaseIabActivity;->i(Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lcom/pixelberrystudios/iab/BaseIabActivity;->l:Lcom/pixelberrystudios/iab/ah;

    new-instance v1, Lcom/pixelberrystudios/iab/r;

    invoke-direct {v1, p0}, Lcom/pixelberrystudios/iab/r;-><init>(Lcom/pixelberrystudios/iab/BaseIabActivity;)V

    invoke-interface {v0, v1}, Lcom/pixelberrystudios/iab/ah;->startSetup(Lcom/pixelberrystudios/iab/ak;)V

    .line 368
    return-void

    .line 335
    :cond_1
    new-instance v0, Lcom/pixelberrystudios/iab/AmazonHelper;

    invoke-direct {v0, p0}, Lcom/pixelberrystudios/iab/AmazonHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pixelberrystudios/iab/BaseIabActivity;->l:Lcom/pixelberrystudios/iab/ah;

    .line 336
    iget-object v0, p0, Lcom/pixelberrystudios/iab/BaseIabActivity;->l:Lcom/pixelberrystudios/iab/ah;

    check-cast v0, Lcom/pixelberrystudios/iab/AmazonHelper;

    invoke-virtual {p0}, Lcom/pixelberrystudios/iab/BaseIabActivity;->o()Lcom/pixelberrystudios/iab/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pixelberrystudios/iab/AmazonHelper;->setAmazonRequestIdMap(Lcom/pixelberrystudios/iab/f;)V

    .line 337
    iget-object v0, p0, Lcom/pixelberrystudios/iab/BaseIabActivity;->l:Lcom/pixelberrystudios/iab/ah;

    invoke-static {v0}, Lcom/pixelberrystudios/darthkitty/DKAmazon;->setIabPayment(Lcom/pixelberrystudios/iab/ah;)V

    goto :goto_0
.end method

.method public static requestProducts()V
    .locals 2

    .prologue
    .line 111
    sget-object v0, Lcom/pixelberrystudios/iab/BaseIabActivity;->i:Lcom/pixelberrystudios/iab/BaseIabActivity;

    iget-object v0, v0, Lcom/pixelberrystudios/iab/BaseIabActivity;->k:Ljava/util/List;

    if-nez v0, :cond_0

    .line 112
    const-string/jumbo v0, "BaseIabActivity"

    const-string/jumbo v1, "No inventory SKUs to retrieve in requestProducts() call"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :goto_0
    return-void

    .line 116
    :cond_0
    sget-object v0, Lcom/pixelberrystudios/iab/BaseIabActivity;->i:Lcom/pixelberrystudios/iab/BaseIabActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pixelberrystudios/iab/BaseIabActivity;->c(Z)V

    goto :goto_0
.end method

.method public static startPurchaseFlow(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 99
    sget-object v0, Lcom/pixelberrystudios/iab/BaseIabActivity;->i:Lcom/pixelberrystudios/iab/BaseIabActivity;

    new-instance v1, Lcom/pixelberrystudios/iab/g;

    invoke-direct {v1, p0}, Lcom/pixelberrystudios/iab/g;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/pixelberrystudios/iab/BaseIabActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 104
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 639
    sget-object v0, Lcom/pixelberrystudios/iab/BaseIabActivity;->i:Lcom/pixelberrystudios/iab/BaseIabActivity;

    invoke-virtual {v0}, Lcom/pixelberrystudios/iab/BaseIabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 640
    invoke-static {v0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 641
    const/16 v1, 0x51

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 642
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 643
    return-void
.end method

.method protected abstract a(Lorg/cocos2dx/lib/Cocos2dxRenderer;)V
.end method

.method protected abstract a(Z)V
.end method

.method protected abstract b(Z)V
.end method

.method protected abstract c(Ljava/lang/String;)Ljava/lang/String;
.end method

.method protected c(Z)V
    .locals 1

    .prologue
    .line 137
    new-instance v0, Lcom/pixelberrystudios/iab/n;

    invoke-direct {v0, p0, p1}, Lcom/pixelberrystudios/iab/n;-><init>(Lcom/pixelberrystudios/iab/BaseIabActivity;Z)V

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/iab/BaseIabActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 142
    return-void
.end method

.method protected d(Z)V
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/pixelberrystudios/iab/BaseIabActivity;->l:Lcom/pixelberrystudios/iab/ah;

    if-nez v0, :cond_0

    .line 373
    const-string/jumbo v0, "m_iabHelper is null - activity destroyed?"

    invoke-static {v0}, Lcom/pixelberrystudios/iab/BaseIabActivity;->i(Ljava/lang/String;)V

    .line 393
    :goto_0
    return-void

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/pixelberrystudios/iab/BaseIabActivity;->l:Lcom/pixelberrystudios/iab/ah;

    invoke-interface {v0}, Lcom/pixelberrystudios/iab/ah;->hasTransaction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 377
    const-string/jumbo v0, "Helper already has transaction - skipping action"

    invoke-static {v0}, Lcom/pixelberrystudios/iab/BaseIabActivity;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 380
    :cond_1
    new-instance v0, Lcom/pixelberrystudios/iab/t;

    invoke-direct {v0, p0, p1}, Lcom/pixelberrystudios/iab/t;-><init>(Lcom/pixelberrystudios/iab/BaseIabActivity;Z)V

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/iab/BaseIabActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected e(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 178
    const/16 v0, 0x5277

    return v0
.end method

.method protected f(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Launching purchase flow: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pixelberrystudios/iab/BaseIabActivity;->i(Ljava/lang/String;)V

    .line 418
    invoke-virtual {p0, p1}, Lcom/pixelberrystudios/iab/BaseIabActivity;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 419
    if-nez v5, :cond_0

    .line 420
    const-string/jumbo v0, "BaseIabActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Payload could not be build: sku "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :cond_0
    invoke-virtual {p0, p1}, Lcom/pixelberrystudios/iab/BaseIabActivity;->e(Ljava/lang/String;)I

    move-result v3

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "with payload: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " requestCode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pixelberrystudios/iab/BaseIabActivity;->i(Ljava/lang/String;)V

    .line 425
    iget-object v0, p0, Lcom/pixelberrystudios/iab/BaseIabActivity;->l:Lcom/pixelberrystudios/iab/ah;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p0

    invoke-interface/range {v0 .. v5}, Lcom/pixelberrystudios/iab/ah;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/pixelberrystudios/iab/aj;Ljava/lang/String;)V

    .line 426
    return-void
.end method

.method protected g(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Consume SKU: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pixelberrystudios/iab/BaseIabActivity;->i(Ljava/lang/String;)V

    .line 515
    iget-object v0, p0, Lcom/pixelberrystudios/iab/BaseIabActivity;->m:Lcom/pixelberrystudios/iab/Inventory;

    if-eqz v0, :cond_1

    .line 516
    iget-object v0, p0, Lcom/pixelberrystudios/iab/BaseIabActivity;->m:Lcom/pixelberrystudios/iab/Inventory;

    invoke-virtual {v0, p1}, Lcom/pixelberrystudios/iab/Inventory;->getPurchase(Ljava/lang/String;)Lcom/pixelberrystudios/iab/Purchase;

    move-result-object v1

    .line 517
    if-eqz v1, :cond_0

    .line 518
    iget-object v0, p0, Lcom/pixelberrystudios/iab/BaseIabActivity;->l:Lcom/pixelberrystudios/iab/ah;

    check-cast v0, Lcom/pixelberrystudios/iab/w;

    iget-object v2, p0, Lcom/pixelberrystudios/iab/BaseIabActivity;->r:Lcom/pixelberrystudios/iab/af;

    invoke-virtual {v0, v1, v2}, Lcom/pixelberrystudios/iab/w;->a(Lcom/pixelberrystudios/iab/Purchase;Lcom/pixelberrystudios/iab/af;)V

    .line 525
    :goto_0
    return-void

    .line 520
    :cond_0
    const-string/jumbo v0, "BaseIabActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Purchase for sku: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 523
    :cond_1
    const-string/jumbo v0, "BaseIabActivity"

    const-string/jumbo v1, "No purchase inventory found"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected h(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "COMPLAIN: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pixelberrystudios/iab/BaseIabActivity;->i(Ljava/lang/String;)V

    .line 648
    return-void
.end method

.method protected abstract o()Lcom/pixelberrystudios/iab/f;
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 600
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onActivityResult("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pixelberrystudios/iab/BaseIabActivity;->i(Ljava/lang/String;)V

    .line 602
    iget-boolean v0, p0, Lcom/pixelberrystudios/iab/BaseIabActivity;->d:Z

    if-nez v0, :cond_0

    .line 603
    const/16 v0, 0x138b

    if-ne p1, v0, :cond_0

    .line 604
    invoke-static {p2, p3}, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->gamesSignInResult(ILandroid/content/Intent;)V

    .line 623
    :goto_0
    return-void

    .line 610
    :cond_0
    iget-object v0, p0, Lcom/pixelberrystudios/iab/BaseIabActivity;->l:Lcom/pixelberrystudios/iab/ah;

    invoke-interface {v0, p1, p2, p3}, Lcom/pixelberrystudios/iab/ah;->handleActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 614
    invoke-super {p0, p1, p2, p3}, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 615
    invoke-static {p1, p2, p3}, Lcom/pixelberrystudios/darthkitty/DKFacebook;->onActivityResult(IILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 620
    :catch_0
    move-exception v0

    .line 621
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 617
    :cond_1
    :try_start_1
    const-string/jumbo v0, "onActivityResult handled by IABUtil."

    invoke-static {v0}, Lcom/pixelberrystudios/iab/BaseIabActivity;->i(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 188
    invoke-super {p0, p1}, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/pixelberrystudios/hwuandroid/ModernCompat;->requestNotifications(Landroid/app/Activity;)V

    .line 189
    sput-object p0, Lcom/pixelberrystudios/iab/BaseIabActivity;->i:Lcom/pixelberrystudios/iab/BaseIabActivity;

    .line 192
    iput-boolean v0, p0, Lcom/pixelberrystudios/iab/BaseIabActivity;->f:Z

    .line 193
    iput-boolean v0, p0, Lcom/pixelberrystudios/iab/BaseIabActivity;->e:Z

    .line 195
    invoke-virtual {p0}, Lcom/pixelberrystudios/iab/BaseIabActivity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->j(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0}, Lcom/pixelberrystudios/iab/BaseIabActivity;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->k(Ljava/lang/String;)V

    .line 199
    const/4 v0, 0x3

    invoke-super {p0, v0}, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->setVolumeControlStream(I)V

    .line 202
    invoke-virtual {p0}, Lcom/pixelberrystudios/iab/BaseIabActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 203
    invoke-super {p0, v0}, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->l(Ljava/lang/String;)V

    .line 206
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 207
    invoke-virtual {p0}, Lcom/pixelberrystudios/iab/BaseIabActivity;->z()V

    .line 208
    invoke-virtual {p0}, Lcom/pixelberrystudios/iab/BaseIabActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/pixelberrystudios/iab/o;

    invoke-direct {v1, p0}, Lcom/pixelberrystudios/iab/o;-><init>(Lcom/pixelberrystudios/iab/BaseIabActivity;)V

    .line 209
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 222
    :cond_0
    invoke-virtual {p0}, Lcom/pixelberrystudios/iab/BaseIabActivity;->p()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/iab/BaseIabActivity;->setContentView(I)V

    .line 223
    invoke-virtual {p0}, Lcom/pixelberrystudios/iab/BaseIabActivity;->q()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/iab/BaseIabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    iput-object v0, p0, Lcom/pixelberrystudios/iab/BaseIabActivity;->j:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    .line 224
    iget-object v1, p0, Lcom/pixelberrystudios/iab/BaseIabActivity;->j:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-virtual {p0}, Lcom/pixelberrystudios/iab/BaseIabActivity;->r()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/iab/BaseIabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxEditText;

    invoke-virtual {v1, v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->setTextField(Lorg/cocos2dx/lib/Cocos2dxEditText;)V

    .line 225
    iget-object v0, p0, Lcom/pixelberrystudios/iab/BaseIabActivity;->j:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    new-instance v1, Lcom/pixelberrystudios/iab/p;

    invoke-direct {v1, p0}, Lcom/pixelberrystudios/iab/p;-><init>(Lcom/pixelberrystudios/iab/BaseIabActivity;)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->setFocusGainedListener(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$FocusGainListener;)V

    .line 233
    invoke-static {p0}, Lcom/pixelberrystudios/darthkitty/DKAndroidEnvironment;->setContext(Landroid/content/Context;)V

    .line 234
    invoke-static {p0}, Lcom/pixelberrystudios/darthkitty/DKFacebook;->setActivity(Landroid/app/Activity;)V

    .line 235
    iget-object v0, p0, Lcom/pixelberrystudios/iab/BaseIabActivity;->j:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-static {p0, v0}, Lcom/pixelberrystudios/darthkitty/DKDialogHelper;->setActivityAndView(Landroid/app/Activity;Landroid/view/View;)V

    .line 236
    iget-boolean v0, p0, Lcom/pixelberrystudios/iab/BaseIabActivity;->d:Z

    if-eqz v0, :cond_1

    .line 237
    invoke-static {p0}, Lcom/pixelberrystudios/darthkitty/DKAmazon;->setActivity(Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;)V

    .line 242
    :goto_0
    invoke-static {p0}, Lcom/pixelberrystudios/darthkitty/DKUrlOpener;->setActivity(Landroid/app/Activity;)V

    .line 244
    invoke-direct {p0}, Lcom/pixelberrystudios/iab/BaseIabActivity;->k()V

    .line 245
    return-void

    .line 239
    :cond_1
    iget-object v0, p0, Lcom/pixelberrystudios/iab/BaseIabActivity;->j:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-static {p0, v0}, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->setActivityAndView(Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;Landroid/view/View;)V

    .line 240
    invoke-static {}, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->getInstance()Lcom/pixelberrystudios/darthkitty/DKGooglePlay;

    move-result-object v0

    invoke-virtual {p0}, Lcom/pixelberrystudios/iab/BaseIabActivity;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->setWebOauthId(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 627
    invoke-super {p0}, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->onDestroy()V

    .line 630
    iget-object v0, p0, Lcom/pixelberrystudios/iab/BaseIabActivity;->l:Lcom/pixelberrystudios/iab/ah;

    if-eqz v0, :cond_0

    .line 631
    const-string/jumbo v0, "Destroying helper."

    invoke-static {v0}, Lcom/pixelberrystudios/iab/BaseIabActivity;->i(Ljava/lang/String;)V

    .line 632
    iget-object v0, p0, Lcom/pixelberrystudios/iab/BaseIabActivity;->l:Lcom/pixelberrystudios/iab/ah;

    invoke-interface {v0}, Lcom/pixelberrystudios/iab/ah;->dispose()V

    .line 634
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pixelberrystudios/iab/BaseIabActivity;->l:Lcom/pixelberrystudios/iab/ah;

    .line 635
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 249
    invoke-super {p0}, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->onPause()V

    .line 250
    iget-object v0, p0, Lcom/pixelberrystudios/iab/BaseIabActivity;->j:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->onPause()V

    .line 251
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 255
    invoke-super {p0}, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->onResume()V

    .line 256
    invoke-static {}, Lcom/pixelberrystudios/darthkitty/DKDialogHelper;->onResume()V

    .line 258
    iget-boolean v0, p0, Lcom/pixelberrystudios/iab/BaseIabActivity;->d:Z

    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {p0}, Lcom/pixelberrystudios/iab/BaseIabActivity;->w()V

    .line 264
    :goto_0
    invoke-virtual {p0}, Lcom/pixelberrystudios/iab/BaseIabActivity;->z()V

    .line 265
    return-void

    .line 261
    :cond_0
    invoke-virtual {p0}, Lcom/pixelberrystudios/iab/BaseIabActivity;->x()V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 182
    invoke-super {p0}, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->onStart()V

    .line 183
    invoke-virtual {p0}, Lcom/pixelberrystudios/iab/BaseIabActivity;->z()V

    .line 184
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .prologue
    .line 269
    invoke-super {p0, p1}, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->onWindowFocusChanged(Z)V

    .line 270
    if-eqz p1, :cond_0

    .line 271
    invoke-virtual {p0}, Lcom/pixelberrystudios/iab/BaseIabActivity;->z()V

    .line 273
    :cond_0
    return-void
.end method

.method protected abstract p()I
.end method

.method protected abstract q()I
.end method

.method protected abstract r()I
.end method

.method protected abstract s()Ljava/lang/String;
.end method

.method protected abstract t()[Ljava/lang/String;
.end method

.method protected abstract u()Ljava/lang/String;
.end method

.method protected v()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/pixelberrystudios/iab/BaseIabActivity;->k:Ljava/util/List;

    if-nez v0, :cond_0

    .line 131
    sget-object v0, Lcom/pixelberrystudios/iab/BaseIabActivity;->i:Lcom/pixelberrystudios/iab/BaseIabActivity;

    invoke-virtual {v0}, Lcom/pixelberrystudios/iab/BaseIabActivity;->y()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/pixelberrystudios/iab/BaseIabActivity;->k:Ljava/util/List;

    .line 133
    :cond_0
    return-void
.end method

.method protected w()V
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/pixelberrystudios/iab/BaseIabActivity;->j:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->onResume()V

    .line 284
    return-void
.end method

.method protected x()V
    .locals 3

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/pixelberrystudios/iab/BaseIabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    .line 289
    const/16 v1, 0x5209

    invoke-static {v0, p0, v1}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getErrorDialog(ILandroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object v0

    .line 290
    if-eqz v0, :cond_1

    .line 291
    new-instance v1, Lcom/pixelberrystudios/iab/q;

    invoke-direct {v1, p0}, Lcom/pixelberrystudios/iab/q;-><init>(Lcom/pixelberrystudios/iab/BaseIabActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 305
    iget-object v1, p0, Lcom/pixelberrystudios/iab/BaseIabActivity;->j:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-virtual {v1}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->getRenderer()Lorg/cocos2dx/lib/Cocos2dxRenderer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->setDrawDisabled(Z)V

    .line 306
    iget-object v1, p0, Lcom/pixelberrystudios/iab/BaseIabActivity;->j:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-virtual {v1}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->onPause()V

    .line 307
    invoke-static {v0, p0}, Lcom/pixelberrystudios/darthkitty/DKDialogHelper;->showDialogAndMaintainImmersiveMode(Landroid/app/Dialog;Landroid/app/Activity;)V

    .line 314
    :goto_0
    iget-object v0, p0, Lcom/pixelberrystudios/iab/BaseIabActivity;->l:Lcom/pixelberrystudios/iab/ah;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pixelberrystudios/iab/BaseIabActivity;->l:Lcom/pixelberrystudios/iab/ah;

    invoke-interface {v0}, Lcom/pixelberrystudios/iab/ah;->isSetupDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 315
    invoke-direct {p0}, Lcom/pixelberrystudios/iab/BaseIabActivity;->k()V

    .line 317
    :cond_0
    return-void

    .line 310
    :cond_1
    iget-object v0, p0, Lcom/pixelberrystudios/iab/BaseIabActivity;->j:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->onResume()V

    goto :goto_0
.end method

.method protected y()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 651
    invoke-virtual {p0}, Lcom/pixelberrystudios/iab/BaseIabActivity;->t()[Ljava/lang/String;

    move-result-object v2

    .line 652
    if-nez v2, :cond_1

    .line 653
    const-string/jumbo v1, "BaseIabActivity"

    const-string/jumbo v2, "Error getting SKUs"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    :cond_0
    :goto_0
    return-object v0

    .line 657
    :cond_1
    array-length v1, v2

    if-nez v1, :cond_2

    .line 658
    const-string/jumbo v1, "BaseIabActivity"

    const-string/jumbo v2, "Error: no SKUs to get"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 663
    :cond_2
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 664
    array-length v3, v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 665
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Query for SKU: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/pixelberrystudios/iab/BaseIabActivity;->i(Ljava/lang/String;)V

    .line 664
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected z()V
    .locals 2

    .prologue
    .line 677
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 678
    const-string/jumbo v0, "updateFullScreenMode 19"

    invoke-static {v0}, Lcom/pixelberrystudios/iab/BaseIabActivity;->i(Ljava/lang/String;)V

    .line 679
    invoke-virtual {p0}, Lcom/pixelberrystudios/iab/BaseIabActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1506

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 683
    :cond_0
    return-void
.end method
