.class public Lcom/pixelberrystudios/iab/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/pixelberrystudios/iab/ah;


# instance fields
.field a:Z

.field b:Ljava/lang/String;

.field c:Z

.field d:Z

.field volatile e:Z

.field volatile f:Z

.field g:Ljava/lang/String;

.field h:Landroid/content/Context;

.field i:Lcom/android/vending/billing/IInAppBillingService;

.field j:Landroid/content/ServiceConnection;

.field k:I

.field l:Ljava/lang/String;

.field m:Ljava/lang/String;

.field n:Ljava/lang/String;

.field o:Lcom/pixelberrystudios/iab/aj;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-boolean v1, p0, Lcom/pixelberrystudios/iab/w;->a:Z

    .line 75
    const-string/jumbo v0, "IabHelper"

    iput-object v0, p0, Lcom/pixelberrystudios/iab/w;->b:Ljava/lang/String;

    .line 78
    iput-boolean v1, p0, Lcom/pixelberrystudios/iab/w;->c:Z

    .line 81
    iput-boolean v1, p0, Lcom/pixelberrystudios/iab/w;->d:Z

    .line 85
    iput-boolean v1, p0, Lcom/pixelberrystudios/iab/w;->e:Z

    .line 88
    iput-boolean v1, p0, Lcom/pixelberrystudios/iab/w;->f:Z

    .line 92
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/pixelberrystudios/iab/w;->g:Ljava/lang/String;

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pixelberrystudios/iab/w;->n:Ljava/lang/String;

    .line 144
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/pixelberrystudios/iab/w;->h:Landroid/content/Context;

    .line 145
    iput-object p2, p0, Lcom/pixelberrystudios/iab/w;->n:Ljava/lang/String;

    .line 147
    const-string/jumbo v0, "IAB helper created."

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/iab/w;->c(Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 638
    const-string/jumbo v0, "0:OK/1:User Canceled/2:Unknown/3:Billing Unavailable/4:Item unavailable/5:Developer Error/6:Error/7:Item Already Owned/8:Item not owned"

    const-string/jumbo v1, "/"

    .line 641
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 642
    const-string/jumbo v1, "0:OK/-1001:Remote exception during initialization/-1002:Bad response received/-1003:Purchase signature verification failed/-1004:Send intent failed/-1005:User cancelled/-1006:Unknown purchase response/-1007:Missing token/-1008:Unknown error/-1009:Subscriptions not available/-1010:Invalid consumption attempt"

    const-string/jumbo v2, "/"

    .line 651
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 653
    const/16 v2, -0x3e8

    if-gt p0, v2, :cond_1

    .line 654
    rsub-int v0, p0, -0x3e8

    .line 655
    if-ltz v0, :cond_0

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v0, v1, v0

    .line 661
    :goto_0
    return-object v0

    .line 656
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":Unknown IAB Helper Error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 658
    :cond_1
    if-ltz p0, :cond_2

    array-length v1, v0

    if-lt p0, v1, :cond_3

    .line 659
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":Unknown"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 661
    :cond_3
    aget-object v0, v0, p0

    goto :goto_0
.end method


# virtual methods
.method a(Landroid/content/Intent;)I
    .locals 4

    .prologue
    .line 691
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "RESPONSE_CODE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 692
    if-nez v0, :cond_0

    .line 693
    const-string/jumbo v0, "Intent with no response code, assuming OK (known issue)"

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/iab/w;->d(Ljava/lang/String;)V

    .line 694
    const/4 v0, 0x0

    .line 697
    :goto_0
    return v0

    .line 696
    :cond_0
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 697
    :cond_1
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0

    .line 699
    :cond_2
    const-string/jumbo v1, "Unexpected type for intent response code."

    invoke-virtual {p0, v1}, Lcom/pixelberrystudios/iab/w;->d(Ljava/lang/String;)V

    .line 700
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/pixelberrystudios/iab/w;->d(Ljava/lang/String;)V

    .line 701
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unexpected type for intent response code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method a(Landroid/os/Bundle;)I
    .locals 4

    .prologue
    .line 675
    const-string/jumbo v0, "RESPONSE_CODE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 676
    if-nez v0, :cond_0

    .line 677
    const-string/jumbo v0, "Bundle with null response code, assuming OK (known issue)"

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/iab/w;->c(Ljava/lang/String;)V

    .line 678
    const/4 v0, 0x0

    .line 681
    :goto_0
    return v0

    .line 680
    :cond_0
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 681
    :cond_1
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0

    .line 683
    :cond_2
    const-string/jumbo v1, "Unexpected type for bundle response code."

    invoke-virtual {p0, v1}, Lcom/pixelberrystudios/iab/w;->d(Ljava/lang/String;)V

    .line 684
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/pixelberrystudios/iab/w;->d(Ljava/lang/String;)V

    .line 685
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unexpected type for bundle response code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method a(Lcom/pixelberrystudios/iab/Inventory;Ljava/lang/String;)I
    .locals 12

    .prologue
    const/4 v3, 0x0

    .line 723
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Querying owned items, item type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/iab/w;->c(Ljava/lang/String;)V

    .line 724
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Package name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pixelberrystudios/iab/w;->h:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/iab/w;->c(Ljava/lang/String;)V

    .line 726
    const/4 v0, 0x0

    move v1, v3

    .line 729
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Calling getPurchases with continuation token: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/pixelberrystudios/iab/w;->c(Ljava/lang/String;)V

    .line 730
    iget-object v2, p0, Lcom/pixelberrystudios/iab/w;->i:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/pixelberrystudios/iab/w;->h:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5, p2, v0}, Lcom/android/vending/billing/IInAppBillingService;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 733
    invoke-virtual {p0, v6}, Lcom/pixelberrystudios/iab/w;->a(Landroid/os/Bundle;)I

    move-result v0

    .line 734
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Owned items response: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/pixelberrystudios/iab/w;->c(Ljava/lang/String;)V

    .line 735
    if-eqz v0, :cond_1

    .line 736
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getPurchases() failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/pixelberrystudios/iab/w;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/pixelberrystudios/iab/w;->c(Ljava/lang/String;)V

    move v3, v0

    .line 781
    :cond_0
    :goto_1
    return v3

    .line 739
    :cond_1
    const-string/jumbo v0, "INAPP_PURCHASE_ITEM_LIST"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "INAPP_PURCHASE_DATA_LIST"

    .line 740
    invoke-virtual {v6, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "INAPP_DATA_SIGNATURE_LIST"

    .line 741
    invoke-virtual {v6, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 742
    :cond_2
    const-string/jumbo v0, "Bundle returned from getPurchases() doesn\'t contain required fields."

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/iab/w;->d(Ljava/lang/String;)V

    .line 743
    const/16 v3, -0x3ea

    goto :goto_1

    .line 746
    :cond_3
    const-string/jumbo v0, "INAPP_PURCHASE_ITEM_LIST"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 748
    const-string/jumbo v0, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 750
    const-string/jumbo v0, "INAPP_DATA_SIGNATURE_LIST"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    move v5, v3

    move v4, v1

    .line 753
    :goto_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_6

    .line 754
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 755
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 756
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 757
    iget-object v10, p0, Lcom/pixelberrystudios/iab/w;->n:Ljava/lang/String;

    invoke-static {v10, v0, v1}, Lcom/pixelberrystudios/iab/ap;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 758
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Sku is owned: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/pixelberrystudios/iab/w;->c(Ljava/lang/String;)V

    .line 759
    new-instance v2, Lcom/pixelberrystudios/iab/Purchase;

    invoke-direct {v2, p2, v0, v1}, Lcom/pixelberrystudios/iab/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    invoke-virtual {v2}, Lcom/pixelberrystudios/iab/Purchase;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 762
    const-string/jumbo v1, "BUG: empty/null token!"

    invoke-virtual {p0, v1}, Lcom/pixelberrystudios/iab/w;->e(Ljava/lang/String;)V

    .line 763
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Purchase data: "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/iab/w;->c(Ljava/lang/String;)V

    .line 767
    :cond_4
    invoke-virtual {p1, v2}, Lcom/pixelberrystudios/iab/Inventory;->addPurchase(Lcom/pixelberrystudios/iab/Purchase;)V

    .line 753
    :goto_3
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_2

    .line 770
    :cond_5
    const-string/jumbo v2, "Purchase signature verification **FAILED**. Not adding item."

    invoke-virtual {p0, v2}, Lcom/pixelberrystudios/iab/w;->e(Ljava/lang/String;)V

    .line 771
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "   Purchase data: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/iab/w;->c(Ljava/lang/String;)V

    .line 772
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "   Signature: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/iab/w;->c(Ljava/lang/String;)V

    .line 773
    const/4 v4, 0x1

    goto :goto_3

    .line 777
    :cond_6
    const-string/jumbo v0, "INAPP_CONTINUATION_TOKEN"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 778
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Continuation token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/pixelberrystudios/iab/w;->c(Ljava/lang/String;)V

    .line 779
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 781
    if-eqz v4, :cond_0

    const/16 v3, -0x3eb

    goto/16 :goto_1

    :cond_7
    move v1, v4

    goto/16 :goto_0
.end method

.method a(Ljava/lang/String;Lcom/pixelberrystudios/iab/Inventory;Ljava/util/List;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/pixelberrystudios/iab/Inventory;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 786
    const-string/jumbo v0, "Querying SKU details."

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/iab/w;->c(Ljava/lang/String;)V

    .line 787
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 788
    invoke-virtual {p2, p1}, Lcom/pixelberrystudios/iab/Inventory;->getAllOwnedSkus(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 789
    if-eqz p3, :cond_1

    .line 790
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 791
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 792
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 797
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 798
    const-string/jumbo v0, "queryPrices: nothing to do because there are no SKUs."

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/iab/w;->c(Ljava/lang/String;)V

    move v0, v1

    .line 848
    :goto_1
    return v0

    .line 803
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 805
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    div-int/lit8 v5, v0, 0x14

    .line 806
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    rem-int/lit8 v6, v0, 0x14

    move v2, v1

    .line 807
    :goto_2
    if-ge v2, v5, :cond_4

    .line 808
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 809
    mul-int/lit8 v0, v2, 0x14

    mul-int/lit8 v8, v2, 0x14

    add-int/lit8 v8, v8, 0x14

    invoke-virtual {v3, v0, v8}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 810
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 812
    :cond_3
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 807
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 814
    :cond_4
    if-eqz v6, :cond_6

    .line 815
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 816
    mul-int/lit8 v0, v5, 0x14

    mul-int/lit8 v5, v5, 0x14

    add-int/2addr v5, v6

    invoke-virtual {v3, v0, v5}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 817
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 819
    :cond_5
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 823
    :cond_6
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 824
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 825
    const-string/jumbo v4, "ITEM_ID_LIST"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 826
    iget-object v0, p0, Lcom/pixelberrystudios/iab/w;->i:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/pixelberrystudios/iab/w;->h:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5, p1, v3}, Lcom/android/vending/billing/IInAppBillingService;->a(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 828
    const-string/jumbo v3, "DETAILS_LIST"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 829
    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/iab/w;->a(Landroid/os/Bundle;)I

    move-result v0

    .line 830
    if-eqz v0, :cond_8

    .line 831
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getSkuDetails() failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/pixelberrystudios/iab/w;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/pixelberrystudios/iab/w;->c(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 834
    :cond_8
    const-string/jumbo v0, "getSkuDetails() returned a bundle with neither an error nor a detail list."

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/iab/w;->d(Ljava/lang/String;)V

    .line 835
    const/16 v0, -0x3ea

    goto/16 :goto_1

    .line 839
    :cond_9
    const-string/jumbo v3, "DETAILS_LIST"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 841
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 842
    new-instance v4, Lcom/pixelberrystudios/iab/SkuDetails;

    invoke-direct {v4, p1, v0}, Lcom/pixelberrystudios/iab/SkuDetails;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Got sku details: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/iab/w;->c(Ljava/lang/String;)V

    .line 844
    invoke-virtual {p2, v4}, Lcom/pixelberrystudios/iab/Inventory;->addSkuDetails(Lcom/pixelberrystudios/iab/SkuDetails;)V

    goto :goto_5

    :cond_a
    move v0, v1

    .line 848
    goto/16 :goto_1
.end method

.method public a(ZLjava/util/List;)Lcom/pixelberrystudios/iab/Inventory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/pixelberrystudios/iab/Inventory;"
        }
    .end annotation

    .prologue
    .line 433
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/pixelberrystudios/iab/w;->a(ZLjava/util/List;Ljava/util/List;)Lcom/pixelberrystudios/iab/Inventory;

    move-result-object v0

    return-object v0
.end method

.method public a(ZLjava/util/List;Ljava/util/List;)Lcom/pixelberrystudios/iab/Inventory;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/pixelberrystudios/iab/Inventory;"
        }
    .end annotation

    .prologue
    .line 451
    const-string/jumbo v0, "queryInventory"

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/iab/w;->a(Ljava/lang/String;)V

    .line 453
    :try_start_0
    new-instance v0, Lcom/pixelberrystudios/iab/Inventory;

    invoke-direct {v0}, Lcom/pixelberrystudios/iab/Inventory;-><init>()V

    .line 454
    const-string/jumbo v1, "inapp"

    invoke-virtual {p0, v0, v1}, Lcom/pixelberrystudios/iab/w;->a(Lcom/pixelberrystudios/iab/Inventory;Ljava/lang/String;)I

    move-result v1

    .line 455
    if-eqz v1, :cond_0

    .line 456
    new-instance v0, Lcom/pixelberrystudios/iab/v;

    const-string/jumbo v2, "Error refreshing inventory (querying owned items)."

    invoke-direct {v0, v1, v2}, Lcom/pixelberrystudios/iab/v;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 488
    :catch_0
    move-exception v0

    .line 489
    new-instance v1, Lcom/pixelberrystudios/iab/v;

    const/16 v2, -0x3e9

    const-string/jumbo v3, "Remote exception while refreshing inventory."

    invoke-direct {v1, v2, v3, v0}, Lcom/pixelberrystudios/iab/v;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 459
    :cond_0
    if-eqz p1, :cond_1

    .line 460
    :try_start_1
    const-string/jumbo v1, "Query SKU details"

    invoke-virtual {p0, v1}, Lcom/pixelberrystudios/iab/w;->c(Ljava/lang/String;)V

    .line 461
    const-string/jumbo v1, "inapp"

    invoke-virtual {p0, v1, v0, p2}, Lcom/pixelberrystudios/iab/w;->a(Ljava/lang/String;Lcom/pixelberrystudios/iab/Inventory;Ljava/util/List;)I

    move-result v1

    .line 462
    if-eqz v1, :cond_1

    .line 463
    new-instance v0, Lcom/pixelberrystudios/iab/v;

    const-string/jumbo v2, "Error refreshing inventory (querying prices of items)."

    invoke-direct {v0, v1, v2}, Lcom/pixelberrystudios/iab/v;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 491
    :catch_1
    move-exception v0

    .line 492
    new-instance v1, Lcom/pixelberrystudios/iab/v;

    const/16 v2, -0x3ea

    const-string/jumbo v3, "Error parsing JSON response while refreshing inventory."

    invoke-direct {v1, v2, v3, v0}, Lcom/pixelberrystudios/iab/v;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 486
    :cond_1
    return-object v0
.end method

.method a()V
    .locals 2

    .prologue
    .line 714
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Ending async operation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pixelberrystudios/iab/w;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/iab/w;->c(Ljava/lang/String;)V

    .line 715
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/pixelberrystudios/iab/w;->g:Ljava/lang/String;

    .line 716
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pixelberrystudios/iab/w;->e:Z

    .line 717
    iget-boolean v0, p0, Lcom/pixelberrystudios/iab/w;->f:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/pixelberrystudios/iab/w;->dispose()V

    .line 718
    :cond_0
    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/pixelberrystudios/iab/aj;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 277
    const-string/jumbo v0, "launchPurchaseFlow"

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/iab/w;->a(Ljava/lang/String;)V

    .line 278
    const-string/jumbo v0, "launchPurchaseFlow"

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/iab/w;->b(Ljava/lang/String;)V

    .line 281
    const-string/jumbo v0, "subs"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/pixelberrystudios/iab/w;->d:Z

    if-nez v0, :cond_1

    .line 282
    new-instance v0, Lcom/pixelberrystudios/iab/am;

    const/16 v1, -0x3f1

    const-string/jumbo v2, "Subscriptions are not available."

    invoke-direct {v0, v1, v2}, Lcom/pixelberrystudios/iab/am;-><init>(ILjava/lang/String;)V

    .line 284
    if-eqz p5, :cond_0

    .line 285
    invoke-interface {p5, v0, v7, p6}, Lcom/pixelberrystudios/iab/aj;->a(Lcom/pixelberrystudios/iab/am;Lcom/pixelberrystudios/iab/Purchase;Ljava/lang/String;)V

    .line 338
    :cond_0
    :goto_0
    return-void

    .line 291
    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Constructing buy intent for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", item type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " payload: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/iab/w;->c(Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/pixelberrystudios/iab/w;->i:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/pixelberrystudios/iab/w;->h:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v3, p2

    move-object v4, p3

    move-object v5, p6

    invoke-interface/range {v0 .. v5}, Lcom/android/vending/billing/IInAppBillingService;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 293
    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/iab/w;->a(Landroid/os/Bundle;)I

    move-result v1

    .line 294
    if-eqz v1, :cond_2

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unable to buy item, Error response: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Lcom/pixelberrystudios/iab/w;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/iab/w;->d(Ljava/lang/String;)V

    .line 296
    invoke-virtual {p0}, Lcom/pixelberrystudios/iab/w;->a()V

    .line 297
    new-instance v0, Lcom/pixelberrystudios/iab/am;

    const-string/jumbo v2, "Unable to buy item"

    invoke-direct {v0, v1, v2}, Lcom/pixelberrystudios/iab/am;-><init>(ILjava/lang/String;)V

    .line 298
    if-eqz p5, :cond_0

    .line 299
    const/4 v1, 0x0

    invoke-interface {p5, v0, v1, p6}, Lcom/pixelberrystudios/iab/aj;->a(Lcom/pixelberrystudios/iab/am;Lcom/pixelberrystudios/iab/Purchase;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 316
    :catch_0
    move-exception v0

    .line 317
    invoke-virtual {p0}, Lcom/pixelberrystudios/iab/w;->a()V

    .line 319
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SendIntentException while launching purchase flow for sku "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/pixelberrystudios/iab/w;->d(Ljava/lang/String;)V

    .line 320
    invoke-virtual {v0}, Landroid/content/IntentSender$SendIntentException;->printStackTrace()V

    .line 322
    new-instance v0, Lcom/pixelberrystudios/iab/am;

    const/16 v1, -0x3ec

    const-string/jumbo v2, "Failed to send intent."

    invoke-direct {v0, v1, v2}, Lcom/pixelberrystudios/iab/am;-><init>(ILjava/lang/String;)V

    .line 323
    if-eqz p5, :cond_0

    .line 324
    invoke-interface {p5, v0, v7, p6}, Lcom/pixelberrystudios/iab/aj;->a(Lcom/pixelberrystudios/iab/am;Lcom/pixelberrystudios/iab/Purchase;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 304
    :cond_2
    :try_start_1
    const-string/jumbo v1, "BUY_INTENT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 305
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Launching buy intent for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". Request code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/pixelberrystudios/iab/w;->c(Ljava/lang/String;)V

    .line 306
    iput p4, p0, Lcom/pixelberrystudios/iab/w;->k:I

    .line 307
    iput-object p5, p0, Lcom/pixelberrystudios/iab/w;->o:Lcom/pixelberrystudios/iab/aj;

    .line 308
    iput-object p3, p0, Lcom/pixelberrystudios/iab/w;->l:Ljava/lang/String;

    .line 309
    iput-object p6, p0, Lcom/pixelberrystudios/iab/w;->m:Ljava/lang/String;

    .line 311
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/4 v0, 0x0

    .line 313
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v0, 0x0

    .line 314
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object v0, p1

    move v2, p4

    .line 311
    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 327
    :catch_1
    move-exception v0

    .line 328
    invoke-virtual {p0}, Lcom/pixelberrystudios/iab/w;->a()V

    .line 330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "RemoteException while launching purchase flow for sku "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/pixelberrystudios/iab/w;->d(Ljava/lang/String;)V

    .line 331
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 333
    new-instance v0, Lcom/pixelberrystudios/iab/am;

    const/16 v1, -0x3e9

    const-string/jumbo v2, "Remote exception while starting purchase flow"

    invoke-direct {v0, v1, v2}, Lcom/pixelberrystudios/iab/am;-><init>(ILjava/lang/String;)V

    .line 334
    if-eqz p5, :cond_0

    .line 335
    invoke-interface {p5, v0, v7, p6}, Lcom/pixelberrystudios/iab/aj;->a(Lcom/pixelberrystudios/iab/am;Lcom/pixelberrystudios/iab/Purchase;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method a(Lcom/pixelberrystudios/iab/Purchase;)V
    .locals 5

    .prologue
    .line 547
    const-string/jumbo v0, "consume"

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/iab/w;->a(Ljava/lang/String;)V

    .line 549
    iget-object v0, p1, Lcom/pixelberrystudios/iab/Purchase;->a:Ljava/lang/String;

    const-string/jumbo v1, "inapp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 550
    new-instance v0, Lcom/pixelberrystudios/iab/v;

    const/16 v1, -0x3f2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Items of type \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/pixelberrystudios/iab/Purchase;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\' can\'t be consumed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/pixelberrystudios/iab/v;-><init>(ILjava/lang/String;)V

    throw v0

    .line 555
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/pixelberrystudios/iab/Purchase;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 556
    invoke-virtual {p1}, Lcom/pixelberrystudios/iab/Purchase;->getSku()Ljava/lang/String;

    move-result-object v1

    .line 557
    if-eqz v0, :cond_1

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 558
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can\'t consume "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ". No token."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/iab/w;->d(Ljava/lang/String;)V

    .line 559
    new-instance v0, Lcom/pixelberrystudios/iab/v;

    const/16 v2, -0x3ef

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "PurchaseInfo is missing token for sku: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/pixelberrystudios/iab/v;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 573
    :catch_0
    move-exception v0

    .line 574
    new-instance v1, Lcom/pixelberrystudios/iab/v;

    const/16 v2, -0x3e9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Remote exception while consuming. PurchaseInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/pixelberrystudios/iab/v;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 563
    :cond_2
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Consuming sku: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/pixelberrystudios/iab/w;->c(Ljava/lang/String;)V

    .line 564
    iget-object v2, p0, Lcom/pixelberrystudios/iab/w;->i:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/pixelberrystudios/iab/w;->h:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, v0}, Lcom/android/vending/billing/IInAppBillingService;->b(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 565
    if-nez v0, :cond_3

    .line 566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Successfully consumed sku: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/iab/w;->c(Ljava/lang/String;)V

    .line 576
    return-void

    .line 569
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error consuming consuming sku "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ". "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/pixelberrystudios/iab/w;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/pixelberrystudios/iab/w;->c(Ljava/lang/String;)V

    .line 570
    new-instance v2, Lcom/pixelberrystudios/iab/v;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error consuming sku "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lcom/pixelberrystudios/iab/v;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public a(Lcom/pixelberrystudios/iab/Purchase;Lcom/pixelberrystudios/iab/af;)V
    .locals 2

    .prologue
    .line 614
    const-string/jumbo v0, "consume"

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/iab/w;->a(Ljava/lang/String;)V

    .line 615
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 616
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 617
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1}, Lcom/pixelberrystudios/iab/w;->a(Ljava/util/List;Lcom/pixelberrystudios/iab/af;Lcom/pixelberrystudios/iab/ag;)V

    .line 618
    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 667
    iget-boolean v0, p0, Lcom/pixelberrystudios/iab/w;->c:Z

    if-nez v0, :cond_0

    .line 668
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Illegal state for operation ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "): IAB helper is not set up."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/iab/w;->d(Ljava/lang/String;)V

    .line 669
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "IAB helper is not set up. Can\'t perform operation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 671
    :cond_0
    return-void
.end method

.method a(Ljava/util/List;Lcom/pixelberrystudios/iab/af;Lcom/pixelberrystudios/iab/ag;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/pixelberrystudios/iab/Purchase;",
            ">;",
            "Lcom/pixelberrystudios/iab/af;",
            "Lcom/pixelberrystudios/iab/ag;",
            ")V"
        }
    .end annotation

    .prologue
    .line 854
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    .line 857
    iget-boolean v0, p0, Lcom/pixelberrystudios/iab/w;->c:Z

    if-nez v0, :cond_2

    .line 858
    if-eqz p2, :cond_0

    .line 859
    new-instance v0, Lcom/pixelberrystudios/iab/aa;

    invoke-direct {v0, p0, p2, p1}, Lcom/pixelberrystudios/iab/aa;-><init>(Lcom/pixelberrystudios/iab/w;Lcom/pixelberrystudios/iab/af;Ljava/util/List;)V

    invoke-virtual {v4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 866
    :cond_0
    if-eqz p3, :cond_1

    .line 867
    new-instance v0, Lcom/pixelberrystudios/iab/ab;

    invoke-direct {v0, p0, p1, p3}, Lcom/pixelberrystudios/iab/ab;-><init>(Lcom/pixelberrystudios/iab/w;Ljava/util/List;Lcom/pixelberrystudios/iab/ag;)V

    invoke-virtual {v4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 911
    :cond_1
    :goto_0
    return-void

    .line 880
    :cond_2
    const-string/jumbo v0, "consume"

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/iab/w;->b(Ljava/lang/String;)V

    .line 881
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/pixelberrystudios/iab/ac;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/pixelberrystudios/iab/ac;-><init>(Lcom/pixelberrystudios/iab/w;Ljava/util/List;Lcom/pixelberrystudios/iab/af;Landroid/os/Handler;Lcom/pixelberrystudios/iab/ag;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 910
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 706
    iget-boolean v0, p0, Lcom/pixelberrystudios/iab/w;->e:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can\'t start async operation ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") because another async operation("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pixelberrystudios/iab/w;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") is in progress."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 708
    :cond_0
    iput-object p1, p0, Lcom/pixelberrystudios/iab/w;->g:Ljava/lang/String;

    .line 709
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pixelberrystudios/iab/w;->e:Z

    .line 710
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Starting async operation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/iab/w;->c(Ljava/lang/String;)V

    .line 711
    return-void
.end method

.method c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 914
    iget-boolean v0, p0, Lcom/pixelberrystudios/iab/w;->a:Z

    if-eqz v0, :cond_0

    .line 915
    iget-object v0, p0, Lcom/pixelberrystudios/iab/w;->b:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    :cond_0
    return-void
.end method

.method d(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 920
    iget-object v0, p0, Lcom/pixelberrystudios/iab/w;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "In-app billing error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    return-void
.end method

.method public dispose()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 244
    iget-boolean v0, p0, Lcom/pixelberrystudios/iab/w;->e:Z

    if-eqz v0, :cond_1

    .line 245
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pixelberrystudios/iab/w;->f:Z

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    const-string/jumbo v0, "Disposing."

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/iab/w;->c(Ljava/lang/String;)V

    .line 249
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pixelberrystudios/iab/w;->c:Z

    .line 250
    iget-object v0, p0, Lcom/pixelberrystudios/iab/w;->j:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 251
    const-string/jumbo v0, "Unbinding from service."

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/iab/w;->c(Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lcom/pixelberrystudios/iab/w;->h:Landroid/content/Context;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/pixelberrystudios/iab/w;->i:Lcom/android/vending/billing/IInAppBillingService;

    if-eqz v0, :cond_2

    .line 253
    iget-object v0, p0, Lcom/pixelberrystudios/iab/w;->h:Landroid/content/Context;

    iget-object v1, p0, Lcom/pixelberrystudios/iab/w;->j:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 255
    :cond_2
    iput-object v2, p0, Lcom/pixelberrystudios/iab/w;->j:Landroid/content/ServiceConnection;

    .line 256
    iput-object v2, p0, Lcom/pixelberrystudios/iab/w;->i:Lcom/android/vending/billing/IInAppBillingService;

    .line 257
    iput-object v2, p0, Lcom/pixelberrystudios/iab/w;->o:Lcom/pixelberrystudios/iab/aj;

    goto :goto_0
.end method

.method e(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 924
    iget-object v0, p0, Lcom/pixelberrystudios/iab/w;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "In-app billing warning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    return-void
.end method

.method public getMarketType()Lcom/pixelberrystudios/iab/ai;
    .locals 1

    .prologue
    .line 939
    sget-object v0, Lcom/pixelberrystudios/iab/ai;->a:Lcom/pixelberrystudios/iab/ai;

    return-object v0
.end method

.method public handleActivityResult(IILandroid/content/Intent;)Z
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v5, -0x1

    const/16 v8, -0x3ea

    const/4 v1, 0x1

    const/4 v7, 0x0

    .line 344
    iget v2, p0, Lcom/pixelberrystudios/iab/w;->k:I

    if-eq p1, v2, :cond_0

    .line 429
    :goto_0
    return v0

    .line 346
    :cond_0
    const-string/jumbo v2, "handleActivityResult"

    invoke-virtual {p0, v2}, Lcom/pixelberrystudios/iab/w;->a(Ljava/lang/String;)V

    .line 349
    invoke-virtual {p0}, Lcom/pixelberrystudios/iab/w;->a()V

    .line 351
    if-nez p3, :cond_2

    .line 352
    const-string/jumbo v0, "Null data in IAB activity result."

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/iab/w;->d(Ljava/lang/String;)V

    .line 353
    new-instance v0, Lcom/pixelberrystudios/iab/am;

    const-string/jumbo v2, "Null data in IAB result"

    invoke-direct {v0, v8, v2}, Lcom/pixelberrystudios/iab/am;-><init>(ILjava/lang/String;)V

    .line 354
    iget-object v2, p0, Lcom/pixelberrystudios/iab/w;->o:Lcom/pixelberrystudios/iab/aj;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/pixelberrystudios/iab/w;->o:Lcom/pixelberrystudios/iab/aj;

    iget-object v3, p0, Lcom/pixelberrystudios/iab/w;->m:Ljava/lang/String;

    invoke-interface {v2, v0, v7, v3}, Lcom/pixelberrystudios/iab/aj;->a(Lcom/pixelberrystudios/iab/am;Lcom/pixelberrystudios/iab/Purchase;Ljava/lang/String;)V

    :cond_1
    move v0, v1

    .line 355
    goto :goto_0

    .line 358
    :cond_2
    invoke-virtual {p0, p3}, Lcom/pixelberrystudios/iab/w;->a(Landroid/content/Intent;)I

    move-result v2

    .line 359
    const-string/jumbo v3, "INAPP_PURCHASE_DATA"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 360
    const-string/jumbo v4, "INAPP_DATA_SIGNATURE"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 362
    if-ne p2, v5, :cond_a

    if-nez v2, :cond_a

    .line 363
    const-string/jumbo v2, "Successful resultcode from purchase activity."

    invoke-virtual {p0, v2}, Lcom/pixelberrystudios/iab/w;->c(Ljava/lang/String;)V

    .line 364
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Purchase data: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/pixelberrystudios/iab/w;->c(Ljava/lang/String;)V

    .line 365
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Data signature: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/pixelberrystudios/iab/w;->c(Ljava/lang/String;)V

    .line 366
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Extras: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/pixelberrystudios/iab/w;->c(Ljava/lang/String;)V

    .line 367
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Expected item type: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/pixelberrystudios/iab/w;->l:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/pixelberrystudios/iab/w;->c(Ljava/lang/String;)V

    .line 369
    if-eqz v3, :cond_3

    if-nez v4, :cond_5

    .line 370
    :cond_3
    const-string/jumbo v0, "BUG: either purchaseData or dataSignature is null."

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/iab/w;->d(Ljava/lang/String;)V

    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Extras: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/iab/w;->c(Ljava/lang/String;)V

    .line 372
    new-instance v0, Lcom/pixelberrystudios/iab/am;

    const/16 v2, -0x3f0

    const-string/jumbo v3, "IAB returned null purchaseData or dataSignature"

    invoke-direct {v0, v2, v3}, Lcom/pixelberrystudios/iab/am;-><init>(ILjava/lang/String;)V

    .line 373
    iget-object v2, p0, Lcom/pixelberrystudios/iab/w;->o:Lcom/pixelberrystudios/iab/aj;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/pixelberrystudios/iab/w;->o:Lcom/pixelberrystudios/iab/aj;

    iget-object v3, p0, Lcom/pixelberrystudios/iab/w;->m:Ljava/lang/String;

    invoke-interface {v2, v0, v7, v3}, Lcom/pixelberrystudios/iab/aj;->a(Lcom/pixelberrystudios/iab/am;Lcom/pixelberrystudios/iab/Purchase;Ljava/lang/String;)V

    :cond_4
    move v0, v1

    .line 374
    goto/16 :goto_0

    .line 379
    :cond_5
    :try_start_0
    new-instance v2, Lcom/pixelberrystudios/iab/Purchase;

    iget-object v5, p0, Lcom/pixelberrystudios/iab/w;->l:Ljava/lang/String;

    invoke-direct {v2, v5, v3, v4}, Lcom/pixelberrystudios/iab/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    invoke-virtual {v2}, Lcom/pixelberrystudios/iab/Purchase;->getSku()Ljava/lang/String;

    move-result-object v5

    .line 383
    iget-object v6, p0, Lcom/pixelberrystudios/iab/w;->n:Ljava/lang/String;

    invoke-static {v6, v3, v4}, Lcom/pixelberrystudios/iab/ap;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Purchase signature verification FAILED for sku "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/iab/w;->d(Ljava/lang/String;)V

    .line 385
    new-instance v0, Lcom/pixelberrystudios/iab/am;

    const/16 v3, -0x3eb

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Signature verification failed for sku "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/pixelberrystudios/iab/am;-><init>(ILjava/lang/String;)V

    .line 386
    iget-object v3, p0, Lcom/pixelberrystudios/iab/w;->o:Lcom/pixelberrystudios/iab/aj;

    if-eqz v3, :cond_6

    .line 387
    iget-object v3, p0, Lcom/pixelberrystudios/iab/w;->o:Lcom/pixelberrystudios/iab/aj;

    iget-object v4, p0, Lcom/pixelberrystudios/iab/w;->m:Ljava/lang/String;

    invoke-interface {v3, v0, v2, v4}, Lcom/pixelberrystudios/iab/aj;->a(Lcom/pixelberrystudios/iab/am;Lcom/pixelberrystudios/iab/Purchase;Ljava/lang/String;)V

    :cond_6
    move v0, v1

    .line 389
    goto/16 :goto_0

    .line 391
    :cond_7
    const-string/jumbo v3, "Purchase signature successfully verified."

    invoke-virtual {p0, v3}, Lcom/pixelberrystudios/iab/w;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 403
    iget-object v3, p0, Lcom/pixelberrystudios/iab/w;->o:Lcom/pixelberrystudios/iab/aj;

    if-eqz v3, :cond_8

    .line 404
    iget-object v3, p0, Lcom/pixelberrystudios/iab/w;->o:Lcom/pixelberrystudios/iab/aj;

    new-instance v4, Lcom/pixelberrystudios/iab/am;

    const-string/jumbo v5, "Success"

    invoke-direct {v4, v0, v5}, Lcom/pixelberrystudios/iab/am;-><init>(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/pixelberrystudios/iab/w;->m:Ljava/lang/String;

    invoke-interface {v3, v4, v2, v0}, Lcom/pixelberrystudios/iab/aj;->a(Lcom/pixelberrystudios/iab/am;Lcom/pixelberrystudios/iab/Purchase;Ljava/lang/String;)V

    :cond_8
    :goto_1
    move v0, v1

    .line 429
    goto/16 :goto_0

    .line 393
    :catch_0
    move-exception v0

    .line 394
    const-string/jumbo v2, "Failed to parse purchase data."

    invoke-virtual {p0, v2}, Lcom/pixelberrystudios/iab/w;->d(Ljava/lang/String;)V

    .line 395
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 396
    new-instance v0, Lcom/pixelberrystudios/iab/am;

    const-string/jumbo v2, "Failed to parse purchase data."

    invoke-direct {v0, v8, v2}, Lcom/pixelberrystudios/iab/am;-><init>(ILjava/lang/String;)V

    .line 397
    iget-object v2, p0, Lcom/pixelberrystudios/iab/w;->o:Lcom/pixelberrystudios/iab/aj;

    if-eqz v2, :cond_9

    .line 398
    iget-object v2, p0, Lcom/pixelberrystudios/iab/w;->o:Lcom/pixelberrystudios/iab/aj;

    iget-object v3, p0, Lcom/pixelberrystudios/iab/w;->m:Ljava/lang/String;

    invoke-interface {v2, v0, v7, v3}, Lcom/pixelberrystudios/iab/aj;->a(Lcom/pixelberrystudios/iab/am;Lcom/pixelberrystudios/iab/Purchase;Ljava/lang/String;)V

    :cond_9
    move v0, v1

    .line 400
    goto/16 :goto_0

    .line 408
    :cond_a
    if-ne p2, v5, :cond_b

    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Result code was OK but in-app billing response was not OK: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Lcom/pixelberrystudios/iab/w;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/iab/w;->c(Ljava/lang/String;)V

    .line 411
    iget-object v0, p0, Lcom/pixelberrystudios/iab/w;->o:Lcom/pixelberrystudios/iab/aj;

    if-eqz v0, :cond_8

    .line 412
    new-instance v0, Lcom/pixelberrystudios/iab/am;

    const-string/jumbo v3, "Problem purchashing item."

    invoke-direct {v0, v2, v3}, Lcom/pixelberrystudios/iab/am;-><init>(ILjava/lang/String;)V

    .line 413
    iget-object v2, p0, Lcom/pixelberrystudios/iab/w;->o:Lcom/pixelberrystudios/iab/aj;

    iget-object v3, p0, Lcom/pixelberrystudios/iab/w;->m:Ljava/lang/String;

    invoke-interface {v2, v0, v7, v3}, Lcom/pixelberrystudios/iab/aj;->a(Lcom/pixelberrystudios/iab/am;Lcom/pixelberrystudios/iab/Purchase;Ljava/lang/String;)V

    goto :goto_1

    .line 416
    :cond_b
    if-nez p2, :cond_c

    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Purchase canceled - Response: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Lcom/pixelberrystudios/iab/w;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/iab/w;->c(Ljava/lang/String;)V

    .line 418
    new-instance v0, Lcom/pixelberrystudios/iab/am;

    const/16 v2, -0x3ed

    const-string/jumbo v3, "User canceled."

    invoke-direct {v0, v2, v3}, Lcom/pixelberrystudios/iab/am;-><init>(ILjava/lang/String;)V

    .line 419
    iget-object v2, p0, Lcom/pixelberrystudios/iab/w;->o:Lcom/pixelberrystudios/iab/aj;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/pixelberrystudios/iab/w;->o:Lcom/pixelberrystudios/iab/aj;

    iget-object v3, p0, Lcom/pixelberrystudios/iab/w;->m:Ljava/lang/String;

    invoke-interface {v2, v0, v7, v3}, Lcom/pixelberrystudios/iab/aj;->a(Lcom/pixelberrystudios/iab/am;Lcom/pixelberrystudios/iab/Purchase;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 422
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Purchase failed. Result code: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ". Response: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 423
    invoke-static {v2}, Lcom/pixelberrystudios/iab/w;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 422
    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/iab/w;->d(Ljava/lang/String;)V

    .line 424
    new-instance v0, Lcom/pixelberrystudios/iab/am;

    const/16 v2, -0x3ee

    const-string/jumbo v3, "Unknown purchase response."

    invoke-direct {v0, v2, v3}, Lcom/pixelberrystudios/iab/am;-><init>(ILjava/lang/String;)V

    .line 425
    iget-object v2, p0, Lcom/pixelberrystudios/iab/w;->o:Lcom/pixelberrystudios/iab/aj;

    if-eqz v2, :cond_8

    .line 426
    iget-object v2, p0, Lcom/pixelberrystudios/iab/w;->o:Lcom/pixelberrystudios/iab/aj;

    iget-object v3, p0, Lcom/pixelberrystudios/iab/w;->m:Ljava/lang/String;

    invoke-interface {v2, v0, v7, v3}, Lcom/pixelberrystudios/iab/aj;->a(Lcom/pixelberrystudios/iab/am;Lcom/pixelberrystudios/iab/Purchase;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public hasTransaction()Z
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/pixelberrystudios/iab/w;->e:Z

    return v0
.end method

.method public isSetupDone()Z
    .locals 1

    .prologue
    .line 943
    iget-boolean v0, p0, Lcom/pixelberrystudios/iab/w;->c:Z

    return v0
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/pixelberrystudios/iab/aj;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 270
    const-string/jumbo v3, "inapp"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/pixelberrystudios/iab/w;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/pixelberrystudios/iab/aj;Ljava/lang/String;)V

    .line 271
    return-void
.end method

.method public queryInventoryAsync(ZLjava/util/List;Lcom/pixelberrystudios/iab/al;)V
    .locals 7
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
    .line 501
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    .line 502
    iget-boolean v0, p0, Lcom/pixelberrystudios/iab/w;->c:Z

    if-nez v0, :cond_0

    .line 504
    new-instance v0, Lcom/pixelberrystudios/iab/am;

    const/4 v1, 0x3

    const-string/jumbo v2, "Setup !complete"

    invoke-direct {v0, v1, v2}, Lcom/pixelberrystudios/iab/am;-><init>(ILjava/lang/String;)V

    const/4 v1, 0x0

    invoke-interface {p3, v0, v1}, Lcom/pixelberrystudios/iab/al;->a(Lcom/pixelberrystudios/iab/am;Lcom/pixelberrystudios/iab/Inventory;)V

    .line 535
    :goto_0
    return-void

    .line 508
    :cond_0
    const-string/jumbo v0, "queryInventory"

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/iab/w;->a(Ljava/lang/String;)V

    .line 509
    const-string/jumbo v0, "refresh inventory"

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/iab/w;->b(Ljava/lang/String;)V

    .line 510
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/pixelberrystudios/iab/y;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/pixelberrystudios/iab/y;-><init>(Lcom/pixelberrystudios/iab/w;ZLjava/util/List;Landroid/os/Handler;Lcom/pixelberrystudios/iab/al;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 534
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public startSetup(Lcom/pixelberrystudios/iab/ak;)V
    .locals 4

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/pixelberrystudios/iab/w;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "IAB helper is already set up."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_0
    const-string/jumbo v0, "Starting in-app billing setup."

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/iab/w;->c(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/pixelberrystudios/iab/w;->j:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_2

    .line 237
    :cond_1
    :goto_0
    return-void

    .line 167
    :cond_2
    new-instance v0, Lcom/pixelberrystudios/iab/x;

    invoke-direct {v0, p0, p1}, Lcom/pixelberrystudios/iab/x;-><init>(Lcom/pixelberrystudios/iab/w;Lcom/pixelberrystudios/iab/ak;)V

    iput-object v0, p0, Lcom/pixelberrystudios/iab/w;->j:Landroid/content/ServiceConnection;

    .line 225
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 226
    const-string/jumbo v1, "com.android.vending"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    iget-object v1, p0, Lcom/pixelberrystudios/iab/w;->h:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 229
    iget-object v1, p0, Lcom/pixelberrystudios/iab/w;->h:Landroid/content/Context;

    iget-object v2, p0, Lcom/pixelberrystudios/iab/w;->j:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0

    .line 232
    :cond_3
    if-eqz p1, :cond_1

    .line 233
    new-instance v0, Lcom/pixelberrystudios/iab/am;

    const/4 v1, 0x3

    const-string/jumbo v2, "Billing service unavailable on device."

    invoke-direct {v0, v1, v2}, Lcom/pixelberrystudios/iab/am;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/pixelberrystudios/iab/ak;->a(Lcom/pixelberrystudios/iab/am;)V

    goto :goto_0
.end method
