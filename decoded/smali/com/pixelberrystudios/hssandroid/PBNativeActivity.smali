.class public abstract Lcom/pixelberrystudios/hssandroid/PBNativeActivity;
.super Lcom/pixelberrystudios/iab/BaseIabActivity;
.source "SourceFile"


# static fields
.field public static authenticatePath:Ljava/lang/String;
    .annotation runtime Lcom/leanplum/annotations/Variable;
    .end annotation
.end field

.field public static clothingStoreConfigOverrideProto:Ljava/lang/String;
    .annotation runtime Lcom/leanplum/annotations/Variable;
    .end annotation
.end field

.field public static createAccountPath:Ljava/lang/String;
    .annotation runtime Lcom/leanplum/annotations/Variable;
    .end annotation
.end field

.field public static disableGoButton:Z
    .annotation runtime Lcom/leanplum/annotations/Variable;
    .end annotation
.end field

.field public static e:Lcom/leanplum/Var;

.field public static f:Lcom/leanplum/Var;

.field public static g:Lcom/leanplum/Var;

.field public static getKeyPath:Ljava/lang/String;
    .annotation runtime Lcom/leanplum/annotations/Variable;
    .end annotation
.end field

.field public static h:Z

.field public static isAdvertisingEnabled:Z
    .annotation runtime Lcom/leanplum/annotations/Variable;
    .end annotation
.end field

.field public static isAppSpenderRewardEnabled:Z
    .annotation runtime Lcom/leanplum/annotations/Variable;
    .end annotation
.end field

.field public static isChatEnabled:Z
    .annotation runtime Lcom/leanplum/annotations/Variable;
    .end annotation
.end field

.field public static isClothingStoreConfigOverridden:Z
    .annotation runtime Lcom/leanplum/annotations/Variable;
    .end annotation
.end field

.field public static isPromoStartingRewardActive:Z
    .annotation runtime Lcom/leanplum/annotations/Variable;
    .end annotation
.end field

.field public static isPure:Z
    .annotation runtime Lcom/leanplum/annotations/Variable;
    .end annotation
.end field

.field public static isViewFriendEnabled:Z
    .annotation runtime Lcom/leanplum/annotations/Variable;
    .end annotation
.end field

.field public static isWeeklyGoalsEnabled:Z
    .annotation runtime Lcom/leanplum/annotations/Variable;
    .end annotation
.end field

.field public static limitActionDurations:Z
    .annotation runtime Lcom/leanplum/annotations/Variable;
    .end annotation
.end field

.field public static linkAccountPath:Ljava/lang/String;
    .annotation runtime Lcom/leanplum/annotations/Variable;
    .end annotation
.end field

.field public static moreCurrencyMessage:Ljava/lang/String;
    .annotation runtime Lcom/leanplum/annotations/Variable;
    .end annotation
.end field

.field public static partyDurationMultiplier:F
    .annotation runtime Lcom/leanplum/annotations/Variable;
    .end annotation
.end field

.field public static promoStartingBooks:F
    .annotation runtime Lcom/leanplum/annotations/Variable;
    .end annotation
.end field

.field public static promoStartingCoins:F
    .annotation runtime Lcom/leanplum/annotations/Variable;
    .end annotation
.end field

.field public static promoStartingMessage:Ljava/lang/String;
    .annotation runtime Lcom/leanplum/annotations/Variable;
    .end annotation
.end field

.field public static promoStartingRings:F
    .annotation runtime Lcom/leanplum/annotations/Variable;
    .end annotation
.end field

.field public static questDurationMultiplier:F
    .annotation runtime Lcom/leanplum/annotations/Variable;
    .end annotation
.end field

.field public static startingBooks:F
    .annotation runtime Lcom/leanplum/annotations/Variable;
    .end annotation
.end field

.field public static startingCoins:F
    .annotation runtime Lcom/leanplum/annotations/Variable;
    .end annotation
.end field

.field public static startingRings:F
    .annotation runtime Lcom/leanplum/annotations/Variable;
    .end annotation
.end field

.field public static syncAutoFrequencySeconds:F
    .annotation runtime Lcom/leanplum/annotations/Variable;
    .end annotation
.end field

.field public static syncCheckFrequencySeconds:F
    .annotation runtime Lcom/leanplum/annotations/Variable;
    .end annotation
.end field

.field public static syncGamePath:Ljava/lang/String;
    .annotation runtime Lcom/leanplum/annotations/Variable;
    .end annotation
.end field

.field public static verifyReceiptPath:Ljava/lang/String;
    .annotation runtime Lcom/leanplum/annotations/Variable;
    .end annotation
.end field

.field public static versionConflictUseLocalIfServerNoUuid:Z
    .annotation runtime Lcom/leanplum/annotations/Variable;
    .end annotation
.end field

.field public static versionConflictUseUuid:Z
    .annotation runtime Lcom/leanplum/annotations/Variable;
    .end annotation
.end field


# instance fields
.field private y:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 130
    const-string/jumbo v0, "configQuestChainList"

    const-string/jumbo v1, "test_quest_chain_list.protobin"

    invoke-static {v0, v1}, Lcom/leanplum/Var;->defineAsset(Ljava/lang/String;Ljava/lang/String;)Lcom/leanplum/Var;

    move-result-object v0

    sput-object v0, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->e:Lcom/leanplum/Var;

    .line 134
    sput-boolean v4, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->isPromoStartingRewardActive:Z

    .line 137
    const-string/jumbo v0, ""

    sput-object v0, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->promoStartingMessage:Ljava/lang/String;

    .line 139
    sput v2, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->promoStartingCoins:F

    .line 141
    sput v2, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->promoStartingRings:F

    .line 143
    sput v2, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->promoStartingBooks:F

    .line 146
    sput v2, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->syncAutoFrequencySeconds:F

    .line 148
    sput v2, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->syncCheckFrequencySeconds:F

    .line 151
    const-string/jumbo v0, ""

    sput-object v0, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->createAccountPath:Ljava/lang/String;

    .line 153
    const-string/jumbo v0, ""

    sput-object v0, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->linkAccountPath:Ljava/lang/String;

    .line 155
    const-string/jumbo v0, ""

    sput-object v0, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->authenticatePath:Ljava/lang/String;

    .line 157
    const-string/jumbo v0, ""

    sput-object v0, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->syncGamePath:Ljava/lang/String;

    .line 159
    const-string/jumbo v0, ""

    sput-object v0, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->getKeyPath:Ljava/lang/String;

    .line 161
    const-string/jumbo v0, ""

    sput-object v0, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->verifyReceiptPath:Ljava/lang/String;

    .line 165
    sput-boolean v3, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->limitActionDurations:Z

    .line 167
    sput-boolean v3, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->isViewFriendEnabled:Z

    .line 171
    sput-boolean v3, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->versionConflictUseUuid:Z

    .line 173
    sput-boolean v3, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->versionConflictUseLocalIfServerNoUuid:Z

    .line 177
    const-string/jumbo v0, ""

    sput-object v0, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->moreCurrencyMessage:Ljava/lang/String;

    .line 181
    sput-boolean v4, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->disableGoButton:Z

    .line 184
    sput-boolean v3, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->isAdvertisingEnabled:Z

    .line 187
    sput-boolean v3, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->isAppSpenderRewardEnabled:Z

    .line 190
    sput-boolean v4, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->isClothingStoreConfigOverridden:Z

    .line 193
    sput-boolean v3, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->isWeeklyGoalsEnabled:Z

    .line 196
    sput-boolean v3, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->isChatEnabled:Z

    .line 199
    sput-boolean v4, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->isPure:Z

    .line 202
    const-string/jumbo v0, ""

    sput-object v0, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->clothingStoreConfigOverrideProto:Ljava/lang/String;

    .line 205
    sput v5, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->questDurationMultiplier:F

    .line 208
    sput v5, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->partyDurationMultiplier:F

    .line 211
    sput v2, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->startingCoins:F

    .line 213
    sput v2, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->startingRings:F

    .line 215
    sput v2, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->startingBooks:F

    .line 219
    const-string/jumbo v0, "characterConfigOverrideProto"

    const-string/jumbo v1, "test_character_config_override.protobin"

    invoke-static {v0, v1}, Lcom/leanplum/Var;->defineAsset(Ljava/lang/String;Ljava/lang/String;)Lcom/leanplum/Var;

    move-result-object v0

    sput-object v0, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->f:Lcom/leanplum/Var;

    .line 222
    const-string/jumbo v0, "buildingConfigOverrideProto"

    const-string/jumbo v1, "test_building_config_override.protobin"

    invoke-static {v0, v1}, Lcom/leanplum/Var;->defineAsset(Ljava/lang/String;Ljava/lang/String;)Lcom/leanplum/Var;

    move-result-object v0

    sput-object v0, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->g:Lcom/leanplum/Var;

    .line 660
    const-string/jumbo v0, "cocosdenshion"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 661
    const-string/jumbo v0, "HSS"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 662
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 244
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/pixelberrystudios/iab/BaseIabActivity;-><init>(I)V

    .line 245
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->c:Z

    .line 246
    return-void
.end method

.method static synthetic a(Lcom/pixelberrystudios/hssandroid/PBNativeActivity;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->y:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic a(Lcom/pixelberrystudios/hssandroid/PBNativeActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->y:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method protected static d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 668
    return-void
.end method

.method public static k()Z
    .locals 1

    .prologue
    .line 228
    sget-boolean v0, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->h:Z

    return v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 635
    const-string/jumbo v0, "onSignInFailed"

    invoke-static {v0}, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->d(Ljava/lang/String;)V

    .line 636
    iget-boolean v0, p0, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->d:Z

    if-nez v0, :cond_0

    .line 637
    invoke-static {}, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->onSignInFailed()V

    .line 639
    :cond_0
    return-void
.end method

.method public a(Lcom/pixelberrystudios/iab/am;Lcom/pixelberrystudios/iab/Purchase;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onIabPurchaseFinished result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " purchase: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " payload: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->d(Ljava/lang/String;)V

    .line 563
    invoke-virtual {p1}, Lcom/pixelberrystudios/iab/am;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    .line 564
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1, p3}, Lcom/pixelberrystudios/hssandroid/AppNativeCalls;->notifyPurchaseCompleted(Lcom/pixelberrystudios/iab/Purchase;ZLjava/lang/String;)V

    .line 597
    :goto_0
    return-void

    .line 568
    :cond_1
    iget-boolean v0, p0, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->d:Z

    if-nez v0, :cond_2

    .line 569
    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/pixelberrystudios/iab/am;->a()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    .line 571
    iget-object v0, p0, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->l:Lcom/pixelberrystudios/iab/ah;

    check-cast v0, Lcom/pixelberrystudios/iab/w;

    iget-object v1, p0, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->s:Lcom/pixelberrystudios/iab/af;

    invoke-virtual {v0, p2, v1}, Lcom/pixelberrystudios/iab/w;->a(Lcom/pixelberrystudios/iab/Purchase;Lcom/pixelberrystudios/iab/af;)V

    .line 580
    :cond_2
    iget-object v0, p0, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->m:Lcom/pixelberrystudios/iab/Inventory;

    if-nez v0, :cond_3

    .line 581
    const-string/jumbo v0, "onIabPurchaseFinished: created purchase inventory"

    invoke-static {v0}, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->d(Ljava/lang/String;)V

    .line 582
    new-instance v0, Lcom/pixelberrystudios/iab/Inventory;

    invoke-direct {v0}, Lcom/pixelberrystudios/iab/Inventory;-><init>()V

    iput-object v0, p0, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->m:Lcom/pixelberrystudios/iab/Inventory;

    .line 584
    :cond_3
    iget-object v0, p0, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->m:Lcom/pixelberrystudios/iab/Inventory;

    invoke-virtual {v0, p2}, Lcom/pixelberrystudios/iab/Inventory;->addPurchase(Lcom/pixelberrystudios/iab/Purchase;)V

    .line 588
    const/4 v0, 0x1

    invoke-static {p2, v0, p3}, Lcom/pixelberrystudios/hssandroid/AppNativeCalls;->notifyPurchaseCompleted(Lcom/pixelberrystudios/iab/Purchase;ZLjava/lang/String;)V

    goto :goto_0
.end method

.method protected a(Lorg/cocos2dx/lib/Cocos2dxRenderer;)V
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->j:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->getRenderer()Lorg/cocos2dx/lib/Cocos2dxRenderer;

    move-result-object v0

    invoke-static {v0}, Lcom/pixelberrystudios/hssandroid/AppNativeCalls;->setView(Lorg/cocos2dx/lib/Cocos2dxRenderer;)V

    .line 607
    return-void
.end method

.method protected a(Z)V
    .locals 2

    .prologue
    .line 546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPurchaseInventoryLoaded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->m:Lcom/pixelberrystudios/iab/Inventory;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->d(Ljava/lang/String;)V

    .line 547
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->m:Lcom/pixelberrystudios/iab/Inventory;

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->m:Lcom/pixelberrystudios/iab/Inventory;

    invoke-static {v0}, Lcom/pixelberrystudios/hssandroid/AppNativeCalls;->notifyBoughtInventoryLoaded(Lcom/pixelberrystudios/iab/Inventory;)V

    .line 550
    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 643
    const-string/jumbo v0, "onSignInSucceeded"

    invoke-static {v0}, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->d(Ljava/lang/String;)V

    .line 644
    iget-boolean v0, p0, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->d:Z

    if-nez v0, :cond_0

    .line 645
    invoke-static {}, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->onSignInSucceeded()V

    .line 647
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 261
    new-instance v0, Lcom/pixelberrystudios/hssandroid/h;

    invoke-direct {v0, p0, p1, p2}, Lcom/pixelberrystudios/hssandroid/h;-><init>(Lcom/pixelberrystudios/hssandroid/PBNativeActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 278
    return-void
.end method

.method protected b(Z)V
    .locals 2

    .prologue
    .line 554
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSkuInventoryLoaded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->n:Lcom/pixelberrystudios/iab/Inventory;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->d(Ljava/lang/String;)V

    .line 555
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->n:Lcom/pixelberrystudios/iab/Inventory;

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->n:Lcom/pixelberrystudios/iab/Inventory;

    invoke-static {v0}, Lcom/pixelberrystudios/hssandroid/AppNativeCalls;->notifySkuInventoryLoaded(Lcom/pixelberrystudios/iab/Inventory;)V

    .line 558
    :cond_0
    return-void
.end method

.method protected c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 514
    iget-boolean v0, p0, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->d:Z

    if-eqz v0, :cond_0

    .line 515
    const-string/jumbo v0, ""

    .line 517
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/pixelberrystudios/hssandroid/AppNativeCalls;->createPayload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public l()V
    .locals 3

    .prologue
    .line 249
    iget-object v0, p0, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->j:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->getRenderer()Lorg/cocos2dx/lib/Cocos2dxRenderer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->setPixelberryReloadTextures(Z)V

    .line 251
    invoke-virtual {p0}, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->n()V

    .line 255
    invoke-virtual {p0}, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800ee

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 256
    invoke-virtual {p0}, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800ed

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 257
    invoke-virtual {p0, v0, v1}, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    return-void
.end method

.method public m()V
    .locals 1

    .prologue
    .line 281
    new-instance v0, Lcom/pixelberrystudios/hssandroid/j;

    invoke-direct {v0, p0}, Lcom/pixelberrystudios/hssandroid/j;-><init>(Lcom/pixelberrystudios/hssandroid/PBNativeActivity;)V

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 290
    return-void
.end method

.method public n()V
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->j:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->getRenderer()Lorg/cocos2dx/lib/Cocos2dxRenderer;

    move-result-object v0

    new-instance v1, Lcom/pixelberrystudios/hssandroid/k;

    invoke-direct {v1, p0}, Lcom/pixelberrystudios/hssandroid/k;-><init>(Lcom/pixelberrystudios/hssandroid/PBNativeActivity;)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->addPixelberryTask(Ljava/lang/Runnable;)V

    .line 306
    return-void
.end method

.method protected o()Lcom/pixelberrystudios/iab/f;
    .locals 1

    .prologue
    .line 475
    iget-boolean v0, p0, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->d:Z

    if-eqz v0, :cond_0

    .line 476
    new-instance v0, Lcom/pixelberrystudios/hssandroid/o;

    invoke-direct {v0, p0}, Lcom/pixelberrystudios/hssandroid/o;-><init>(Lcom/pixelberrystudios/hssandroid/PBNativeActivity;)V

    .line 490
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 447
    invoke-super {p0, p1, p2, p3}, Lcom/pixelberrystudios/iab/BaseIabActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 449
    const/16 v0, 0x64

    if-ne p1, v0, :cond_4

    .line 450
    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    .line 451
    const-string/jumbo v0, "ENGAGEMENT_STATUS"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 452
    const-string/jumbo v1, "CLOSE_FINISHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 453
    invoke-static {}, Lcom/pixelberrystudios/darthkitty/DKSponsorPay;->DKSponsorPayOnChangeStatusCloseFinished()V

    .line 470
    :cond_0
    :goto_0
    return-void

    .line 454
    :cond_1
    const-string/jumbo v1, "CLOSE_ABORTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 455
    invoke-static {}, Lcom/pixelberrystudios/darthkitty/DKSponsorPay;->DKSponsorPayOnChangeStatusCloseAborted()V

    goto :goto_0

    .line 457
    :cond_2
    invoke-static {}, Lcom/pixelberrystudios/darthkitty/DKSponsorPay;->DKSponsorPayOnChangeStatusError()V

    goto :goto_0

    .line 460
    :cond_3
    invoke-static {}, Lcom/pixelberrystudios/darthkitty/DKSponsorPay;->DKSponsorPayOnChangeStatusError()V

    goto :goto_0

    .line 462
    :cond_4
    const/16 v0, 0x138c

    if-eq p1, v0, :cond_5

    const/16 v0, 0x138d

    if-ne p1, v0, :cond_0

    :cond_5
    const/16 v0, 0x2711

    if-ne p2, v0, :cond_0

    .line 466
    invoke-virtual {p0}, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->d()Lcom/google/android/gms/common/api/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/n;->g()V

    .line 468
    invoke-static {}, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->getInstance()Lcom/pixelberrystudios/darthkitty/DKGooglePlay;

    invoke-static {}, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->signOut()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 365
    invoke-super {p0, p1}, Lcom/pixelberrystudios/iab/BaseIabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 368
    iget-boolean v0, p0, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->d:Z

    if-nez v0, :cond_0

    .line 370
    new-instance v0, Lb/a/a/a/i;

    invoke-direct {v0, p0}, Lb/a/a/a/i;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x2

    new-array v1, v1, [Lb/a/a/a/q;

    const/4 v2, 0x0

    new-instance v3, Lcom/crashlytics/android/Crashlytics;

    invoke-direct {v3}, Lcom/crashlytics/android/Crashlytics;-><init>()V

    aput-object v3, v1, v2

    new-instance v2, Lcom/crashlytics/android/ndk/b;

    invoke-direct {v2}, Lcom/crashlytics/android/ndk/b;-><init>()V

    aput-object v2, v1, v4

    .line 372
    invoke-virtual {v0, v1}, Lb/a/a/a/i;->a([Lb/a/a/a/q;)Lb/a/a/a/i;

    move-result-object v0

    .line 373
    invoke-virtual {v0}, Lb/a/a/a/i;->a()Lb/a/a/a/f;

    move-result-object v0

    .line 374
    invoke-static {v0}, Lb/a/a/a/f;->a(Lb/a/a/a/f;)Lb/a/a/a/f;

    .line 378
    :cond_0
    iget-boolean v0, p0, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->d:Z

    if-nez v0, :cond_1

    .line 379
    new-instance v0, Lcom/pixelberrystudios/hssandroid/m;

    invoke-direct {v0, p0}, Lcom/pixelberrystudios/hssandroid/m;-><init>(Lcom/pixelberrystudios/hssandroid/PBNativeActivity;)V

    invoke-static {v0}, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->setLinkedStateProvider(Lcom/pixelberrystudios/darthkitty/DKGooglePlay$LinkedGameStateProvider;)V

    .line 392
    :cond_1
    new-instance v0, Lcom/pixelberrystudios/hssandroid/n;

    invoke-direct {v0, p0}, Lcom/pixelberrystudios/hssandroid/n;-><init>(Lcom/pixelberrystudios/hssandroid/PBNativeActivity;)V

    invoke-static {v0}, Lcom/leanplum/Leanplum;->addStartResponseHandler(Lcom/leanplum/callbacks/StartCallback;)V

    .line 399
    invoke-static {}, Lcom/leanplum/Leanplum;->syncResources()V

    .line 404
    invoke-virtual {p0}, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800cb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 405
    invoke-static {v0}, Lcom/pixelberrystudios/darthkitty/DKAndroidEnvironment;->setDisplayName(Ljava/lang/String;)V

    .line 415
    invoke-static {p0}, Lcom/pixelberrystudios/hssandroid/NotificationsHelper;->setActivity(Landroid/app/Activity;)V

    .line 416
    invoke-static {}, Lcom/pixelberrystudios/hssandroid/AppNativeCalls;->GetLeanPlumAppId()Ljava/lang/String;

    .line 417
    invoke-virtual {p0}, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {}, Lcom/pixelberrystudios/hssandroid/AppNativeCalls;->GetHelpshiftApiKey()Ljava/lang/String;

    move-result-object v1

    .line 418
    invoke-static {}, Lcom/pixelberrystudios/hssandroid/AppNativeCalls;->GetHelpshiftDomainName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/pixelberrystudios/hssandroid/AppNativeCalls;->GetHelpshiftAppId()Ljava/lang/String;

    move-result-object v3

    .line 417
    invoke-static {v0, v1, v2, v3}, Lcom/helpshift/ea;->a(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    invoke-static {p0}, Lcom/pixelberrystudios/darthkitty/DKHelpshift;->setActivity(Landroid/app/Activity;)V

    .line 421
    invoke-static {p0}, Lcom/pixelberrystudios/hssandroid/AppNativeCalls;->setActivity(Lcom/pixelberrystudios/hssandroid/PBNativeActivity;)V

    .line 424
    invoke-static {}, Lcom/pixelberrystudios/hssandroid/LeanplumHelper;->checkForAndNotifyOfDeepLink()V

    .line 425
    invoke-virtual {p0}, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/adjust/sdk/Adjust;->appWillOpenUrl(Landroid/net/Uri;)V

    .line 427
    iget-boolean v0, p0, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->d:Z

    if-nez v0, :cond_2

    .line 428
    invoke-static {}, Lcom/pixelberrystudios/darthkitty/DKGooglePlus;->getInstance()Lcom/pixelberrystudios/darthkitty/DKGooglePlus;

    move-result-object v0

    invoke-virtual {p0}, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->d()Lcom/google/android/gms/common/api/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pixelberrystudios/darthkitty/DKGooglePlus;->setPlusClient(Lcom/google/android/gms/common/api/n;)V

    .line 431
    invoke-static {}, Lcom/pixelberrystudios/darthkitty/DKSponsorPay;->getInstance()Lcom/pixelberrystudios/darthkitty/DKSponsorPay;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/pixelberrystudios/darthkitty/DKSponsorPay;->setActivity(Landroid/app/Activity;)V

    .line 435
    :cond_2
    iget-boolean v0, p0, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->d:Z

    invoke-static {v0}, Lcom/pixelberrystudios/darthkitty/DKUrlOpener;->setIsAmazon(Z)V

    .line 438
    const v0, 0x7f0f0105

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    .line 439
    invoke-virtual {v0, v4}, Landroid/widget/VideoView;->setZOrderMediaOverlay(Z)V

    .line 440
    invoke-static {}, Lcom/pixelberrystudios/darthkitty/DKMoviePlayer;->getInstance()Lcom/pixelberrystudios/darthkitty/DKMoviePlayer;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/pixelberrystudios/darthkitty/DKMoviePlayer;->setActivityAndView(Landroid/app/Activity;Landroid/widget/VideoView;)V

    .line 442
    sput-object p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->g_activity:Landroid/app/Activity;

    .line 443
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 325
    invoke-super {p0}, Lcom/pixelberrystudios/iab/BaseIabActivity;->onDestroy()V

    .line 326
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 629
    const/4 v0, 0x0

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 310
    invoke-super {p0, p1}, Lcom/pixelberrystudios/iab/BaseIabActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 311
    invoke-virtual {p0, p1}, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->setIntent(Landroid/content/Intent;)V

    .line 312
    const-string/jumbo v0, "PBNativeActivity"

    const-string/jumbo v1, "onNewIntent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 318
    invoke-super {p0}, Lcom/pixelberrystudios/iab/BaseIabActivity;->onPause()V

    .line 319
    invoke-static {}, Lcom/adjust/sdk/Adjust;->onPause()V

    .line 320
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 331
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 332
    invoke-virtual {p0}, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 333
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v1, v0, :cond_0

    .line 334
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->setRequestedOrientation(I)V

    .line 337
    :cond_0
    invoke-super {p0}, Lcom/pixelberrystudios/iab/BaseIabActivity;->onResume()V

    .line 339
    invoke-static {p0}, Lcom/adjust/sdk/Adjust;->onResume(Landroid/app/Activity;)V

    .line 342
    invoke-static {}, Lcom/pixelberrystudios/hssandroid/LeanplumHelper;->checkForAndNotifyOfDeepLink()V

    .line 347
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->closeIMEKeyboard()V

    .line 348
    iget-boolean v0, p0, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->d:Z

    if-nez v0, :cond_1

    .line 350
    invoke-static {}, Lcom/pixelberrystudios/darthkitty/DKSponsorPay;->getInstance()Lcom/pixelberrystudios/darthkitty/DKSponsorPay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pixelberrystudios/darthkitty/DKSponsorPay;->start()Ljava/lang/String;

    .line 355
    :cond_1
    iget-object v0, p0, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->j:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->getRenderer()Lorg/cocos2dx/lib/Cocos2dxRenderer;

    move-result-object v0

    new-instance v1, Lcom/pixelberrystudios/hssandroid/l;

    invoke-direct {v1, p0}, Lcom/pixelberrystudios/hssandroid/l;-><init>(Lcom/pixelberrystudios/hssandroid/PBNativeActivity;)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->addPixelberryTask(Ljava/lang/Runnable;)V

    .line 361
    return-void
.end method

.method protected p()I
    .locals 1

    .prologue
    .line 496
    const v0, 0x7f030053

    return v0
.end method

.method protected q()I
    .locals 1

    .prologue
    .line 502
    const v0, 0x7f0f0104

    return v0
.end method

.method protected r()I
    .locals 1

    .prologue
    .line 508
    const v0, 0x7f0f0103

    return v0
.end method

.method protected s()Ljava/lang/String;
    .locals 1

    .prologue
    .line 540
    const-string/jumbo v0, ""

    return-object v0
.end method

.method protected t()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 601
    invoke-static {}, Lcom/pixelberrystudios/hssandroid/AppNativeCalls;->getConsumableSkus()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
