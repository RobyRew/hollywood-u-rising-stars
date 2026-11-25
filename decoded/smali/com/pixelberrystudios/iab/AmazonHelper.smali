.class public Lcom/pixelberrystudios/iab/AmazonHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amazon/device/iap/PurchasingListener;
.implements Lcom/pixelberrystudios/iab/ah;


# static fields
.field private static k:I


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Landroid/content/Context;

.field private d:Landroid/os/Handler;

.field private e:Lcom/pixelberrystudios/iab/Inventory;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/pixelberrystudios/iab/ak;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/pixelberrystudios/iab/al;

.field private h:Lcom/pixelberrystudios/iab/aj;

.field private i:Lcom/pixelberrystudios/iab/f;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 130
    const/16 v0, 0x64

    sput v0, Lcom/pixelberrystudios/iab/AmazonHelper;->k:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pixelberrystudios/iab/AmazonHelper;->a:Z

    .line 90
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/pixelberrystudios/iab/AmazonHelper;->b:Ljava/lang/String;

    .line 92
    iput-object p1, p0, Lcom/pixelberrystudios/iab/AmazonHelper;->c:Landroid/content/Context;

    .line 93
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/pixelberrystudios/iab/AmazonHelper;->d:Landroid/os/Handler;

    .line 94
    new-instance v0, Lcom/pixelberrystudios/iab/Inventory;

    invoke-direct {v0}, Lcom/pixelberrystudios/iab/Inventory;-><init>()V

    iput-object v0, p0, Lcom/pixelberrystudios/iab/AmazonHelper;->e:Lcom/pixelberrystudios/iab/Inventory;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pixelberrystudios/iab/AmazonHelper;->f:Ljava/util/List;

    .line 98
    invoke-static {p1, p0}, Lcom/amazon/device/iap/PurchasingService;->registerListener(Landroid/content/Context;Lcom/amazon/device/iap/PurchasingListener;)V

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Purchasing service is running in SandboxMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/amazon/device/iap/PurchasingService;->IS_SANDBOX_MODE:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pixelberrystudios/iab/AmazonHelper;->a(Ljava/lang/String;)V

    .line 100
    sget-boolean v0, Lcom/amazon/device/iap/PurchasingService;->IS_SANDBOX_MODE:Z

    invoke-static {v0}, Lcom/pixelberrystudios/darthkitty/DKAmazon;->setIsSandbox(Z)V

    .line 101
    return-void
.end method

.method static synthetic a(Lcom/pixelberrystudios/iab/AmazonHelper;)Lcom/pixelberrystudios/iab/aj;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/pixelberrystudios/iab/AmazonHelper;->h:Lcom/pixelberrystudios/iab/aj;

    return-object v0
.end method

.method private a()V
    .locals 4

    .prologue
    .line 132
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 134
    const/4 v0, 0x0

    .line 135
    iget-object v2, p0, Lcom/pixelberrystudios/iab/AmazonHelper;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    sget v3, Lcom/pixelberrystudios/iab/AmazonHelper;->k:I

    if-ge v0, v3, :cond_0

    .line 137
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 138
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    :cond_0
    invoke-static {v1}, Lcom/amazon/device/iap/PurchasingService;->getProductData(Ljava/util/Set;)Lcom/amazon/device/iap/model/RequestId;

    .line 145
    return-void
.end method

.method protected static a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 480
    return-void
.end method

.method public static fulfillProduct(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 499
    sget-object v0, Lcom/amazon/device/iap/model/FulfillmentResult;->FULFILLED:Lcom/amazon/device/iap/model/FulfillmentResult;

    invoke-static {p0, v0}, Lcom/amazon/device/iap/PurchasingService;->notifyFulfillment(Ljava/lang/String;Lcom/amazon/device/iap/model/FulfillmentResult;)V

    .line 500
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 450
    return-void
.end method

.method public getMarketType()Lcom/pixelberrystudios/iab/ai;
    .locals 1

    .prologue
    .line 461
    sget-object v0, Lcom/pixelberrystudios/iab/ai;->b:Lcom/pixelberrystudios/iab/ai;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/pixelberrystudios/iab/AmazonHelper;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getUserIdAsync(Lcom/pixelberrystudios/iab/ak;)V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/pixelberrystudios/iab/AmazonHelper;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    invoke-static {}, Lcom/amazon/device/iap/PurchasingService;->getUserData()Lcom/amazon/device/iap/model/RequestId;

    .line 114
    return-void
.end method

.method public handleActivityResult(IILandroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 473
    const/4 v0, 0x0

    return v0
.end method

.method public hasTransaction()Z
    .locals 1

    .prologue
    .line 456
    const/4 v0, 0x0

    return v0
.end method

.method public isSetupDone()Z
    .locals 1

    .prologue
    .line 466
    iget-boolean v0, p0, Lcom/pixelberrystudios/iab/AmazonHelper;->a:Z

    return v0
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/pixelberrystudios/iab/aj;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 164
    const-string/jumbo v3, "inapp"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/pixelberrystudios/iab/AmazonHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/pixelberrystudios/iab/aj;Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/pixelberrystudios/iab/aj;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x0

    .line 171
    iget-boolean v0, p0, Lcom/pixelberrystudios/iab/AmazonHelper;->a:Z

    if-nez v0, :cond_1

    .line 172
    new-instance v0, Lcom/pixelberrystudios/iab/am;

    const-string/jumbo v1, "Set up not complete."

    invoke-direct {v0, v3, v1}, Lcom/pixelberrystudios/iab/am;-><init>(ILjava/lang/String;)V

    invoke-interface {p5, v0, v2, v2}, Lcom/pixelberrystudios/iab/aj;->a(Lcom/pixelberrystudios/iab/am;Lcom/pixelberrystudios/iab/Purchase;Ljava/lang/String;)V

    .line 174
    iput-object v2, p0, Lcom/pixelberrystudios/iab/AmazonHelper;->h:Lcom/pixelberrystudios/iab/aj;

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    iput-object p5, p0, Lcom/pixelberrystudios/iab/AmazonHelper;->h:Lcom/pixelberrystudios/iab/aj;

    .line 178
    invoke-static {p2}, Lcom/amazon/device/iap/PurchasingService;->purchase(Ljava/lang/String;)Lcom/amazon/device/iap/model/RequestId;

    move-result-object v0

    .line 179
    if-eqz v0, :cond_2

    .line 182
    iget-object v1, p0, Lcom/pixelberrystudios/iab/AmazonHelper;->i:Lcom/pixelberrystudios/iab/f;

    if-eqz v1, :cond_0

    .line 183
    iget-object v1, p0, Lcom/pixelberrystudios/iab/AmazonHelper;->i:Lcom/pixelberrystudios/iab/f;

    invoke-interface {v1, v0}, Lcom/pixelberrystudios/iab/f;->a(Lcom/amazon/device/iap/model/RequestId;)V

    goto :goto_0

    .line 186
    :cond_2
    new-instance v0, Lcom/pixelberrystudios/iab/am;

    const-string/jumbo v1, "Request ID could not be generated."

    invoke-direct {v0, v3, v1}, Lcom/pixelberrystudios/iab/am;-><init>(ILjava/lang/String;)V

    invoke-interface {p5, v0, v2, v2}, Lcom/pixelberrystudios/iab/aj;->a(Lcom/pixelberrystudios/iab/am;Lcom/pixelberrystudios/iab/Purchase;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onProductDataResponse(Lcom/amazon/device/iap/model/ProductDataResponse;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 238
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/ProductDataResponse;->getRequestStatus()Lcom/amazon/device/iap/model/ProductDataResponse$RequestStatus;

    move-result-object v0

    .line 239
    iget-boolean v1, p0, Lcom/pixelberrystudios/iab/AmazonHelper;->a:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/pixelberrystudios/iab/AmazonHelper;->g:Lcom/pixelberrystudios/iab/al;

    if-eqz v1, :cond_0

    .line 240
    iget-object v1, p0, Lcom/pixelberrystudios/iab/AmazonHelper;->g:Lcom/pixelberrystudios/iab/al;

    new-instance v2, Lcom/pixelberrystudios/iab/am;

    const/4 v3, 0x3

    const-string/jumbo v4, "Set up not complete."

    invoke-direct {v2, v3, v4}, Lcom/pixelberrystudios/iab/am;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v2, v8}, Lcom/pixelberrystudios/iab/al;->a(Lcom/pixelberrystudios/iab/am;Lcom/pixelberrystudios/iab/Inventory;)V

    .line 244
    :cond_0
    sget-object v1, Lcom/pixelberrystudios/iab/e;->b:[I

    invoke-virtual {v0}, Lcom/amazon/device/iap/model/ProductDataResponse$RequestStatus;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 288
    :cond_1
    :goto_0
    return-void

    .line 247
    :pswitch_0
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/ProductDataResponse;->getProductData()Ljava/util/Map;

    move-result-object v0

    .line 248
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 249
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/amazon/device/iap/model/Product;

    .line 251
    invoke-virtual {v6}, Lcom/amazon/device/iap/model/Product;->getProductType()Lcom/amazon/device/iap/model/ProductType;

    move-result-object v0

    sget-object v1, Lcom/amazon/device/iap/model/ProductType;->CONSUMABLE:Lcom/amazon/device/iap/model/ProductType;

    if-ne v0, v1, :cond_2

    .line 254
    new-instance v0, Lcom/pixelberrystudios/iab/SkuDetails;

    const-string/jumbo v1, "inapp"

    .line 255
    invoke-virtual {v6}, Lcom/amazon/device/iap/model/Product;->getSku()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    .line 257
    invoke-virtual {v6}, Lcom/amazon/device/iap/model/Product;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 258
    invoke-virtual {v6}, Lcom/amazon/device/iap/model/Product;->getPrice()Ljava/lang/String;

    move-result-object v5

    .line 259
    invoke-virtual {v6}, Lcom/amazon/device/iap/model/Product;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/pixelberrystudios/iab/SkuDetails;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iget-object v1, p0, Lcom/pixelberrystudios/iab/AmazonHelper;->e:Lcom/pixelberrystudios/iab/Inventory;

    invoke-virtual {v1, v0}, Lcom/pixelberrystudios/iab/Inventory;->addSkuDetails(Lcom/pixelberrystudios/iab/SkuDetails;)V

    goto :goto_1

    .line 263
    :cond_3
    iget-object v0, p0, Lcom/pixelberrystudios/iab/AmazonHelper;->j:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/pixelberrystudios/iab/AmazonHelper;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 264
    invoke-direct {p0}, Lcom/pixelberrystudios/iab/AmazonHelper;->a()V

    goto :goto_0

    .line 266
    :cond_4
    iput-object v8, p0, Lcom/pixelberrystudios/iab/AmazonHelper;->j:Ljava/util/List;

    .line 268
    iget-object v0, p0, Lcom/pixelberrystudios/iab/AmazonHelper;->g:Lcom/pixelberrystudios/iab/al;

    if-eqz v0, :cond_1

    .line 269
    iget-object v0, p0, Lcom/pixelberrystudios/iab/AmazonHelper;->g:Lcom/pixelberrystudios/iab/al;

    new-instance v1, Lcom/pixelberrystudios/iab/am;

    const/4 v2, 0x0

    const-string/jumbo v3, "Query successful"

    invoke-direct {v1, v2, v3}, Lcom/pixelberrystudios/iab/am;-><init>(ILjava/lang/String;)V

    iget-object v2, p0, Lcom/pixelberrystudios/iab/AmazonHelper;->e:Lcom/pixelberrystudios/iab/Inventory;

    invoke-interface {v0, v1, v2}, Lcom/pixelberrystudios/iab/al;->a(Lcom/pixelberrystudios/iab/am;Lcom/pixelberrystudios/iab/Inventory;)V

    goto :goto_0

    .line 278
    :pswitch_1
    const-string/jumbo v0, "Unsupported call from onProductsDataResponse"

    invoke-static {v0}, Lcom/pixelberrystudios/iab/AmazonHelper;->a(Ljava/lang/String;)V

    .line 281
    :pswitch_2
    iget-object v0, p0, Lcom/pixelberrystudios/iab/AmazonHelper;->g:Lcom/pixelberrystudios/iab/al;

    if-eqz v0, :cond_1

    .line 282
    iget-object v0, p0, Lcom/pixelberrystudios/iab/AmazonHelper;->g:Lcom/pixelberrystudios/iab/al;

    new-instance v1, Lcom/pixelberrystudios/iab/am;

    const/4 v2, 0x4

    const-string/jumbo v3, "Item cannot be retrieved."

    invoke-direct {v1, v2, v3}, Lcom/pixelberrystudios/iab/am;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v8}, Lcom/pixelberrystudios/iab/al;->a(Lcom/pixelberrystudios/iab/am;Lcom/pixelberrystudios/iab/Inventory;)V

    goto/16 :goto_0

    .line 244
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPurchaseResponse(Lcom/amazon/device/iap/model/PurchaseResponse;)V
    .locals 14

    .prologue
    const-wide/16 v6, 0x0

    const/16 v8, 0x8

    const/4 v5, 0x0

    .line 293
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/PurchaseResponse;->getRequestId()Lcom/amazon/device/iap/model/RequestId;

    move-result-object v0

    .line 294
    invoke-virtual {v0}, Lcom/amazon/device/iap/model/RequestId;->toString()Ljava/lang/String;

    move-result-object v3

    .line 295
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/PurchaseResponse;->getRequestStatus()Lcom/amazon/device/iap/model/PurchaseResponse$RequestStatus;

    move-result-object v1

    .line 296
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/PurchaseResponse;->getReceipt()Lcom/amazon/device/iap/model/Receipt;

    move-result-object v10

    .line 297
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/PurchaseResponse;->getUserData()Lcom/amazon/device/iap/model/UserData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/device/iap/model/UserData;->getUserId()Ljava/lang/String;

    move-result-object v2

    .line 300
    sget-object v4, Lcom/pixelberrystudios/iab/e;->c:[I

    invoke-virtual {v1}, Lcom/amazon/device/iap/model/PurchaseResponse$RequestStatus;->ordinal()I

    move-result v1

    aget v1, v4, v1

    packed-switch v1, :pswitch_data_0

    .line 390
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 303
    :pswitch_1
    iget-object v1, p0, Lcom/pixelberrystudios/iab/AmazonHelper;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/pixelberrystudios/iab/AmazonHelper;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 304
    :cond_1
    iget-object v0, p0, Lcom/pixelberrystudios/iab/AmazonHelper;->h:Lcom/pixelberrystudios/iab/aj;

    new-instance v1, Lcom/pixelberrystudios/iab/am;

    const/4 v2, 0x6

    const-string/jumbo v4, "User ID mismatch"

    invoke-direct {v1, v2, v4}, Lcom/pixelberrystudios/iab/am;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v5, v3}, Lcom/pixelberrystudios/iab/aj;->a(Lcom/pixelberrystudios/iab/am;Lcom/pixelberrystudios/iab/Purchase;Ljava/lang/String;)V

    goto :goto_0

    .line 309
    :cond_2
    iget-object v1, p0, Lcom/pixelberrystudios/iab/AmazonHelper;->e:Lcom/pixelberrystudios/iab/Inventory;

    invoke-virtual {v10}, Lcom/amazon/device/iap/model/Receipt;->getSku()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pixelberrystudios/iab/Inventory;->getSkuDetails(Ljava/lang/String;)Lcom/pixelberrystudios/iab/SkuDetails;

    move-result-object v1

    .line 312
    if-nez v1, :cond_3

    .line 313
    iget-object v0, p0, Lcom/pixelberrystudios/iab/AmazonHelper;->h:Lcom/pixelberrystudios/iab/aj;

    new-instance v1, Lcom/pixelberrystudios/iab/am;

    const-string/jumbo v2, "Mismatched SKU"

    invoke-direct {v1, v8, v2}, Lcom/pixelberrystudios/iab/am;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v5, v3}, Lcom/pixelberrystudios/iab/aj;->a(Lcom/pixelberrystudios/iab/am;Lcom/pixelberrystudios/iab/Purchase;Ljava/lang/String;)V

    goto :goto_0

    .line 319
    :cond_3
    iget-object v1, p0, Lcom/pixelberrystudios/iab/AmazonHelper;->i:Lcom/pixelberrystudios/iab/f;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/pixelberrystudios/iab/AmazonHelper;->i:Lcom/pixelberrystudios/iab/f;

    invoke-interface {v1, v0}, Lcom/pixelberrystudios/iab/f;->b(Lcom/amazon/device/iap/model/RequestId;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 320
    iget-object v0, p0, Lcom/pixelberrystudios/iab/AmazonHelper;->h:Lcom/pixelberrystudios/iab/aj;

    new-instance v1, Lcom/pixelberrystudios/iab/am;

    const-string/jumbo v2, "No transaction record"

    invoke-direct {v1, v8, v2}, Lcom/pixelberrystudios/iab/am;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v5, v3}, Lcom/pixelberrystudios/iab/aj;->a(Lcom/pixelberrystudios/iab/am;Lcom/pixelberrystudios/iab/Purchase;Ljava/lang/String;)V

    goto :goto_0

    .line 325
    :cond_4
    new-instance v1, Lcom/pixelberrystudios/iab/Purchase;

    const-string/jumbo v2, "inapp"

    iget-object v4, p0, Lcom/pixelberrystudios/iab/AmazonHelper;->c:Landroid/content/Context;

    .line 327
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 328
    invoke-virtual {v10}, Lcom/amazon/device/iap/model/Receipt;->getSku()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    const-string/jumbo v9, ""

    .line 332
    invoke-virtual {v10}, Lcom/amazon/device/iap/model/Receipt;->getReceiptId()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "amazon"

    iget-object v12, p0, Lcom/pixelberrystudios/iab/AmazonHelper;->b:Ljava/lang/String;

    .line 335
    invoke-static {}, Lcom/pixelberrystudios/darthkitty/DKAmazon;->getIsSandbox()Z

    move-result v13

    invoke-direct/range {v1 .. v13}, Lcom/pixelberrystudios/iab/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 337
    iget-object v2, p0, Lcom/pixelberrystudios/iab/AmazonHelper;->h:Lcom/pixelberrystudios/iab/aj;

    if-eqz v2, :cond_0

    .line 338
    iget-object v2, p0, Lcom/pixelberrystudios/iab/AmazonHelper;->d:Landroid/os/Handler;

    new-instance v3, Lcom/pixelberrystudios/iab/a;

    invoke-direct {v3, p0, v1, v0}, Lcom/pixelberrystudios/iab/a;-><init>(Lcom/pixelberrystudios/iab/AmazonHelper;Lcom/pixelberrystudios/iab/Purchase;Lcom/amazon/device/iap/model/RequestId;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 353
    :pswitch_2
    iget-object v0, p0, Lcom/pixelberrystudios/iab/AmazonHelper;->h:Lcom/pixelberrystudios/iab/aj;

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/pixelberrystudios/iab/AmazonHelper;->d:Landroid/os/Handler;

    new-instance v1, Lcom/pixelberrystudios/iab/b;

    invoke-direct {v1, p0, v3}, Lcom/pixelberrystudios/iab/b;-><init>(Lcom/pixelberrystudios/iab/AmazonHelper;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 365
    :pswitch_3
    const-string/jumbo v0, "Not supported call on PurchaseResponse"

    invoke-static {v0}, Lcom/pixelberrystudios/iab/AmazonHelper;->a(Ljava/lang/String;)V

    .line 367
    :pswitch_4
    iget-object v0, p0, Lcom/pixelberrystudios/iab/AmazonHelper;->h:Lcom/pixelberrystudios/iab/aj;

    if-eqz v0, :cond_0

    .line 368
    new-instance v1, Lcom/pixelberrystudios/iab/Purchase;

    const-string/jumbo v2, "inapp"

    iget-object v0, p0, Lcom/pixelberrystudios/iab/AmazonHelper;->c:Landroid/content/Context;

    .line 370
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    const/4 v8, 0x1

    const-string/jumbo v9, ""

    const-string/jumbo v10, ""

    const-string/jumbo v11, "amazon"

    iget-object v12, p0, Lcom/pixelberrystudios/iab/AmazonHelper;->b:Ljava/lang/String;

    .line 378
    invoke-static {}, Lcom/pixelberrystudios/darthkitty/DKAmazon;->getIsSandbox()Z

    move-result v13

    invoke-direct/range {v1 .. v13}, Lcom/pixelberrystudios/iab/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 380
    iget-object v0, p0, Lcom/pixelberrystudios/iab/AmazonHelper;->d:Landroid/os/Handler;

    new-instance v2, Lcom/pixelberrystudios/iab/c;

    invoke-direct {v2, p0, v1, v3}, Lcom/pixelberrystudios/iab/c;-><init>(Lcom/pixelberrystudios/iab/AmazonHelper;Lcom/pixelberrystudios/iab/Purchase;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 300
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onPurchaseUpdatesResponse(Lcom/amazon/device/iap/model/PurchaseUpdatesResponse;)V
    .locals 15

    .prologue
    .line 395
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/device/iap/model/PurchaseUpdatesResponse;->getRequestStatus()Lcom/amazon/device/iap/model/PurchaseUpdatesResponse$RequestStatus;

    move-result-object v0

    .line 397
    sget-object v1, Lcom/pixelberrystudios/iab/e;->d:[I

    invoke-virtual {v0}, Lcom/amazon/device/iap/model/PurchaseUpdatesResponse$RequestStatus;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 444
    :cond_0
    :goto_0
    return-void

    .line 399
    :pswitch_0
    iget-object v0, p0, Lcom/pixelberrystudios/iab/AmazonHelper;->h:Lcom/pixelberrystudios/iab/aj;

    if-eqz v0, :cond_2

    .line 401
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/device/iap/model/PurchaseUpdatesResponse;->getReceipts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_1
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/iap/model/Receipt;

    .line 403
    invoke-virtual {v0}, Lcom/amazon/device/iap/model/Receipt;->getProductType()Lcom/amazon/device/iap/model/ProductType;

    move-result-object v1

    sget-object v2, Lcom/amazon/device/iap/model/ProductType;->CONSUMABLE:Lcom/amazon/device/iap/model/ProductType;

    if-ne v1, v2, :cond_1

    .line 407
    invoke-virtual {v0}, Lcom/amazon/device/iap/model/Receipt;->getCancelDate()Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_1

    .line 410
    new-instance v1, Lcom/pixelberrystudios/iab/Purchase;

    const-string/jumbo v2, "inapp"

    const-string/jumbo v3, ""

    iget-object v4, p0, Lcom/pixelberrystudios/iab/AmazonHelper;->c:Landroid/content/Context;

    .line 412
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 413
    invoke-virtual {v0}, Lcom/amazon/device/iap/model/Receipt;->getSku()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const-string/jumbo v9, ""

    .line 417
    invoke-virtual {v0}, Lcom/amazon/device/iap/model/Receipt;->getReceiptId()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "amazon"

    iget-object v12, p0, Lcom/pixelberrystudios/iab/AmazonHelper;->b:Ljava/lang/String;

    .line 420
    invoke-static {}, Lcom/pixelberrystudios/darthkitty/DKAmazon;->getIsSandbox()Z

    move-result v13

    invoke-direct/range {v1 .. v13}, Lcom/pixelberrystudios/iab/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 422
    iget-object v0, p0, Lcom/pixelberrystudios/iab/AmazonHelper;->h:Lcom/pixelberrystudios/iab/aj;

    if-eqz v0, :cond_1

    .line 423
    iget-object v0, p0, Lcom/pixelberrystudios/iab/AmazonHelper;->d:Landroid/os/Handler;

    new-instance v2, Lcom/pixelberrystudios/iab/d;

    invoke-direct {v2, p0, v1}, Lcom/pixelberrystudios/iab/d;-><init>(Lcom/pixelberrystudios/iab/AmazonHelper;Lcom/pixelberrystudios/iab/Purchase;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 434
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/device/iap/model/PurchaseUpdatesResponse;->hasMore()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/amazon/device/iap/PurchasingService;->getPurchaseUpdates(Z)Lcom/amazon/device/iap/model/RequestId;

    goto :goto_0

    .line 397
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onUserDataResponse(Lcom/amazon/device/iap/model/UserDataResponse;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 195
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/UserDataResponse;->getRequestStatus()Lcom/amazon/device/iap/model/UserDataResponse$RequestStatus;

    move-result-object v1

    .line 196
    const/4 v0, 0x0

    .line 197
    sget-object v2, Lcom/pixelberrystudios/iab/e;->a:[I

    invoke-virtual {v1}, Lcom/amazon/device/iap/model/UserDataResponse$RequestStatus;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    move-object v1, v0

    .line 221
    :goto_0
    if-eqz v1, :cond_1

    .line 223
    iget-object v0, p0, Lcom/pixelberrystudios/iab/AmazonHelper;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 224
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pixelberrystudios/iab/ak;

    invoke-interface {v0, v1}, Lcom/pixelberrystudios/iab/ak;->a(Lcom/pixelberrystudios/iab/am;)V

    .line 226
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 200
    :pswitch_0
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/UserDataResponse;->getUserData()Lcom/amazon/device/iap/model/UserData;

    move-result-object v1

    if-nez v1, :cond_0

    .line 201
    iput-boolean v3, p0, Lcom/pixelberrystudios/iab/AmazonHelper;->a:Z

    move-object v1, v0

    .line 202
    goto :goto_0

    .line 205
    :cond_0
    iput-boolean v4, p0, Lcom/pixelberrystudios/iab/AmazonHelper;->a:Z

    .line 207
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/UserDataResponse;->getUserData()Lcom/amazon/device/iap/model/UserData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/iap/model/UserData;->getUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pixelberrystudios/iab/AmazonHelper;->b:Ljava/lang/String;

    .line 208
    new-instance v0, Lcom/pixelberrystudios/iab/am;

    const-string/jumbo v1, "Setup successful."

    iget-object v2, p0, Lcom/pixelberrystudios/iab/AmazonHelper;->b:Ljava/lang/String;

    invoke-direct {v0, v3, v1, v2}, Lcom/pixelberrystudios/iab/am;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    .line 210
    goto :goto_0

    .line 213
    :pswitch_1
    iput-boolean v3, p0, Lcom/pixelberrystudios/iab/AmazonHelper;->a:Z

    .line 214
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/pixelberrystudios/iab/AmazonHelper;->b:Ljava/lang/String;

    .line 215
    new-instance v0, Lcom/pixelberrystudios/iab/am;

    const/4 v1, 0x3

    const-string/jumbo v2, "Setup not complete, Need amazon account or market."

    invoke-direct {v0, v1, v2}, Lcom/pixelberrystudios/iab/am;-><init>(ILjava/lang/String;)V

    move-object v1, v0

    goto :goto_0

    .line 230
    :cond_1
    iget-boolean v0, p0, Lcom/pixelberrystudios/iab/AmazonHelper;->a:Z

    if-eqz v0, :cond_2

    .line 231
    invoke-static {v4}, Lcom/amazon/device/iap/PurchasingService;->getPurchaseUpdates(Z)Lcom/amazon/device/iap/model/RequestId;

    .line 233
    :cond_2
    return-void

    .line 197
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public queryInventoryAsync(ZLjava/util/List;Lcom/pixelberrystudios/iab/al;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/pixelberrystudios/iab/al;",
            ")V"
        }
    .end annotation

    .prologue
    .line 151
    const-string/jumbo v0, "queryInventoryAsync"

    invoke-static {v0}, Lcom/pixelberrystudios/iab/AmazonHelper;->a(Ljava/lang/String;)V

    .line 152
    iput-object p3, p0, Lcom/pixelberrystudios/iab/AmazonHelper;->g:Lcom/pixelberrystudios/iab/al;

    .line 155
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0, p2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/pixelberrystudios/iab/AmazonHelper;->j:Ljava/util/List;

    .line 157
    invoke-direct {p0}, Lcom/pixelberrystudios/iab/AmazonHelper;->a()V

    .line 158
    return-void
.end method

.method public setAmazonRequestIdMap(Lcom/pixelberrystudios/iab/f;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/pixelberrystudios/iab/AmazonHelper;->i:Lcom/pixelberrystudios/iab/f;

    .line 108
    return-void
.end method

.method public startSetup(Lcom/pixelberrystudios/iab/ak;)V
    .locals 1

    .prologue
    .line 119
    const-string/jumbo v0, "Amazon setup!"

    invoke-static {v0}, Lcom/pixelberrystudios/iab/AmazonHelper;->a(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0, p1}, Lcom/pixelberrystudios/iab/AmazonHelper;->getUserIdAsync(Lcom/pixelberrystudios/iab/ak;)V

    .line 121
    return-void
.end method
