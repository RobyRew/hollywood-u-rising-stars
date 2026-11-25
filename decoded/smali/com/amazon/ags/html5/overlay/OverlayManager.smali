.class public Lcom/amazon/ags/html5/overlay/OverlayManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amazon/ags/html5/factory/AGSClientInstanceCoordinatorListener;
.implements Lcom/amazon/ags/html5/overlay/toasts/ClickableToastObserver;


# static fields
.field private static final COMMON_LEADERBOARD_MINIMUM_WAIT:J = 0x2710L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private activeToast:Lcom/amazon/ags/html5/overlay/OverlayManager$InGameToastWrapper;

.field private activity:Landroid/app/Activity;

.field private final context:Landroid/content/Context;

.field private final gcVariationManager:Lcom/amazon/ags/html5/content/GCVariationManager;

.field private final imageManager:Lcom/amazon/ags/html5/util/ImageManager;

.field private final kindleFireProxy:Lcom/amazon/ags/client/KindleFireProxy;

.field private final leaderboardLastTimeShownMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final overlaySessionInformation:Lcom/amazon/ags/html5/overlay/OverlaySessionInformation;

.field private final pendingToasts:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final toastFactory:Lcom/amazon/ags/html5/overlay/toasts/ClickableToastFactory;

.field private final uiThreadHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "GC_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/amazon/ags/html5/overlay/OverlayManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/ags/html5/overlay/OverlayManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/amazon/ags/html5/overlay/toasts/ClickableToastFactory;Lcom/amazon/ags/client/KindleFireProxy;Lcom/amazon/ags/html5/overlay/OverlaySessionInformation;Lcom/amazon/ags/html5/content/GCVariationManager;Lcom/amazon/ags/html5/util/ImageManager;)V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-static {}, Lcom/amazon/ags/html5/factory/AGSClientInstanceCoordinator;->getInstance()Lcom/amazon/ags/html5/factory/AGSClientInstanceCoordinator;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amazon/ags/html5/factory/AGSClientInstanceCoordinator;->addAGSClientInstanceCoordinatorListener(Lcom/amazon/ags/html5/factory/AGSClientInstanceCoordinatorListener;)V

    .line 65
    invoke-static {}, Lcom/amazon/ags/html5/factory/AGSClientInstanceCoordinator;->getInstance()Lcom/amazon/ags/html5/factory/AGSClientInstanceCoordinator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/ags/html5/factory/AGSClientInstanceCoordinator;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/ags/html5/overlay/OverlayManager;->activity:Landroid/app/Activity;

    .line 67
    iput-object p5, p0, Lcom/amazon/ags/html5/overlay/OverlayManager;->overlaySessionInformation:Lcom/amazon/ags/html5/overlay/OverlaySessionInformation;

    .line 68
    iput-object p1, p0, Lcom/amazon/ags/html5/overlay/OverlayManager;->context:Landroid/content/Context;

    .line 69
    iput-object p2, p0, Lcom/amazon/ags/html5/overlay/OverlayManager;->uiThreadHandler:Landroid/os/Handler;

    .line 70
    iput-object p3, p0, Lcom/amazon/ags/html5/overlay/OverlayManager;->toastFactory:Lcom/amazon/ags/html5/overlay/toasts/ClickableToastFactory;

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/ags/html5/overlay/OverlayManager;->activeToast:Lcom/amazon/ags/html5/overlay/OverlayManager$InGameToastWrapper;

    .line 72
    iput-object p4, p0, Lcom/amazon/ags/html5/overlay/OverlayManager;->kindleFireProxy:Lcom/amazon/ags/client/KindleFireProxy;

    .line 73
    iput-object p6, p0, Lcom/amazon/ags/html5/overlay/OverlayManager;->gcVariationManager:Lcom/amazon/ags/html5/content/GCVariationManager;

    .line 74
    iput-object p7, p0, Lcom/amazon/ags/html5/overlay/OverlayManager;->imageManager:Lcom/amazon/ags/html5/util/ImageManager;

    .line 76
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/amazon/ags/html5/overlay/OverlayManager;->pendingToasts:Ljava/util/Queue;

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/ags/html5/overlay/OverlayManager;->leaderboardLastTimeShownMap:Ljava/util/Map;

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/ags/html5/overlay/OverlayManager;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/amazon/ags/html5/overlay/OverlayManager;->uiThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getVariationCacheJson()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 151
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 153
    iget-object v0, p0, Lcom/amazon/ags/html5/overlay/OverlayManager;->gcVariationManager:Lcom/amazon/ags/html5/content/GCVariationManager;

    invoke-virtual {v0}, Lcom/amazon/ags/html5/content/GCVariationManager;->getCachedVariations()Ljava/util/Map;

    move-result-object v0

    .line 156
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 157
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 159
    :catch_0
    move-exception v0

    .line 160
    sget-object v1, Lcom/amazon/ags/html5/overlay/OverlayManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Error occurred while preparing variation cache for overlay"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 163
    :cond_0
    return-object v2
.end method

.method private declared-synchronized processNextToast()V
    .locals 12

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 167
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amazon/ags/html5/overlay/OverlayManager;->pendingToasts:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    if-eqz v0, :cond_3

    .line 171
    :try_start_1
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 173
    const-string/jumbo v1, "canBeDisabled"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 174
    sget-object v4, Lcom/amazon/ags/html5/overlay/PopUpPrefs;->INSTANCE:Lcom/amazon/ags/html5/overlay/PopUpPrefs;

    invoke-virtual {v4}, Lcom/amazon/ags/html5/overlay/PopUpPrefs;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/amazon/ags/html5/overlay/PopUpPrefs;->INSTANCE:Lcom/amazon/ags/html5/overlay/PopUpPrefs;

    invoke-virtual {v4}, Lcom/amazon/ags/html5/overlay/PopUpPrefs;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_9

    const-string/jumbo v4, "false"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 175
    :cond_0
    const-string/jumbo v1, "type"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 176
    const-string/jumbo v1, "dedupeTypes"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 179
    const-string/jumbo v1, "Leaderboard"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 180
    const-string/jumbo v1, "leaderboardName"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 181
    if-eqz v4, :cond_b

    .line 182
    iget-object v1, p0, Lcom/amazon/ags/html5/overlay/OverlayManager;->leaderboardLastTimeShownMap:Ljava/util/Map;

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 183
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v1, p0, Lcom/amazon/ags/html5/overlay/OverlayManager;->leaderboardLastTimeShownMap:Ljava/util/Map;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x2710

    cmp-long v1, v8, v10

    if-gez v1, :cond_a

    move v1, v2

    .line 187
    :goto_0
    iget-object v8, p0, Lcom/amazon/ags/html5/overlay/OverlayManager;->leaderboardLastTimeShownMap:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v8, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v4, v1

    .line 191
    :goto_1
    new-instance v8, Ljava/util/HashSet;

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-direct {v8, v1}, Ljava/util/HashSet;-><init>(I)V

    move v1, v3

    .line 192
    :goto_2
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v1, v9, :cond_1

    .line 193
    invoke-virtual {v7, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 194
    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 192
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 197
    :cond_1
    iget-object v1, p0, Lcom/amazon/ags/html5/overlay/OverlayManager;->activeToast:Lcom/amazon/ags/html5/overlay/OverlayManager$InGameToastWrapper;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/amazon/ags/html5/overlay/OverlayManager;->activeToast:Lcom/amazon/ags/html5/overlay/OverlayManager$InGameToastWrapper;

    invoke-virtual {v1}, Lcom/amazon/ags/html5/overlay/OverlayManager$InGameToastWrapper;->getToast()Lcom/amazon/ags/html5/overlay/toasts/ClickableToast;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/ags/html5/overlay/toasts/ClickableToast;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/amazon/ags/html5/overlay/OverlayManager;->activeToast:Lcom/amazon/ags/html5/overlay/OverlayManager$InGameToastWrapper;

    invoke-virtual {v1, v6}, Lcom/amazon/ags/html5/overlay/OverlayManager$InGameToastWrapper;->isDedupeCompatibleWithType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    .line 198
    :goto_3
    if-nez v4, :cond_2

    if-eqz v1, :cond_5

    .line 199
    :cond_2
    iget-object v1, p0, Lcom/amazon/ags/html5/overlay/OverlayManager;->pendingToasts:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 200
    iget-object v1, p0, Lcom/amazon/ags/html5/overlay/OverlayManager;->activeToast:Lcom/amazon/ags/html5/overlay/OverlayManager$InGameToastWrapper;

    invoke-virtual {v1, v0}, Lcom/amazon/ags/html5/overlay/OverlayManager$InGameToastWrapper;->aggregate(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 229
    :cond_3
    :goto_4
    monitor-exit p0

    return-void

    :cond_4
    move v1, v3

    .line 197
    goto :goto_3

    .line 201
    :cond_5
    :try_start_2
    iget-object v1, p0, Lcom/amazon/ags/html5/overlay/OverlayManager;->activeToast:Lcom/amazon/ags/html5/overlay/OverlayManager$InGameToastWrapper;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/amazon/ags/html5/overlay/OverlayManager;->activeToast:Lcom/amazon/ags/html5/overlay/OverlayManager$InGameToastWrapper;

    invoke-virtual {v1}, Lcom/amazon/ags/html5/overlay/OverlayManager$InGameToastWrapper;->getToast()Lcom/amazon/ags/html5/overlay/toasts/ClickableToast;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/ags/html5/overlay/toasts/ClickableToast;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    iget-object v1, p0, Lcom/amazon/ags/html5/overlay/OverlayManager;->activeToast:Lcom/amazon/ags/html5/overlay/OverlayManager$InGameToastWrapper;

    if-nez v1, :cond_3

    .line 202
    :cond_7
    iget-object v1, p0, Lcom/amazon/ags/html5/overlay/OverlayManager;->pendingToasts:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 204
    iget-object v1, p0, Lcom/amazon/ags/html5/overlay/OverlayManager;->toastFactory:Lcom/amazon/ags/html5/overlay/toasts/ClickableToastFactory;

    invoke-interface {v1, v0}, Lcom/amazon/ags/html5/overlay/toasts/ClickableToastFactory;->getClickableWebViewToast(Ljava/lang/String;)Lcom/amazon/ags/html5/overlay/toasts/ClickableToast;

    move-result-object v1

    .line 205
    invoke-interface {v1, p0}, Lcom/amazon/ags/html5/overlay/toasts/ClickableToast;->addClickableToastObserver(Lcom/amazon/ags/html5/overlay/toasts/ClickableToastObserver;)V

    .line 207
    new-instance v2, Lcom/amazon/ags/html5/overlay/OverlayManager$InGameToastWrapper;

    invoke-direct {v2, v6, v8, v1}, Lcom/amazon/ags/html5/overlay/OverlayManager$InGameToastWrapper;-><init>(Ljava/lang/String;Ljava/util/Set;Lcom/amazon/ags/html5/overlay/toasts/ClickableToast;)V

    .line 208
    iput-object v2, p0, Lcom/amazon/ags/html5/overlay/OverlayManager;->activeToast:Lcom/amazon/ags/html5/overlay/OverlayManager$InGameToastWrapper;

    .line 209
    const-string/jumbo v2, "icon"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 210
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 211
    iget-object v3, p0, Lcom/amazon/ags/html5/overlay/OverlayManager;->imageManager:Lcom/amazon/ags/html5/util/ImageManager;

    invoke-virtual {v3, v2}, Lcom/amazon/ags/html5/util/ImageManager;->downloadImage(Ljava/lang/String;)V

    .line 214
    :cond_8
    iget-object v2, p0, Lcom/amazon/ags/html5/overlay/OverlayManager;->uiThreadHandler:Landroid/os/Handler;

    new-instance v3, Lcom/amazon/ags/html5/overlay/OverlayManager$1;

    invoke-direct {v3, p0, v1}, Lcom/amazon/ags/html5/overlay/OverlayManager$1;-><init>(Lcom/amazon/ags/html5/overlay/OverlayManager;Lcom/amazon/ags/html5/overlay/toasts/ClickableToast;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    .line 224
    :catch_0
    move-exception v1

    .line 225
    :try_start_3
    iget-object v2, p0, Lcom/amazon/ags/html5/overlay/OverlayManager;->pendingToasts:Ljava/util/Queue;

    invoke-interface {v2, v0}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 226
    sget-object v0, Lcom/amazon/ags/html5/overlay/OverlayManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Unable to parse toast request"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 222
    :cond_9
    :try_start_4
    iget-object v1, p0, Lcom/amazon/ags/html5/overlay/OverlayManager;->pendingToasts:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    :cond_a
    move v1, v3

    goto/16 :goto_0

    :cond_b
    move v4, v3

    goto/16 :goto_1
.end method

.method private declared-synchronized refreshActivity()V
    .locals 2

    .prologue
    .line 280
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amazon/ags/html5/overlay/OverlayManager;->activity:Landroid/app/Activity;

    invoke-static {}, Lcom/amazon/ags/html5/factory/AGSClientInstanceCoordinator;->getInstance()Lcom/amazon/ags/html5/factory/AGSClientInstanceCoordinator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/ags/html5/factory/AGSClientInstanceCoordinator;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 281
    invoke-static {}, Lcom/amazon/ags/html5/factory/AGSClientInstanceCoordinator;->getInstance()Lcom/amazon/ags/html5/factory/AGSClientInstanceCoordinator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/ags/html5/factory/AGSClientInstanceCoordinator;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/ags/html5/overlay/OverlayManager;->activity:Landroid/app/Activity;

    .line 282
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/ags/html5/overlay/OverlayManager;->activeToast:Lcom/amazon/ags/html5/overlay/OverlayManager$InGameToastWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    :cond_0
    monitor-exit p0

    return-void

    .line 280
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private showHtmlAlert(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 123
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 125
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/amazon/ags/html5/overlay/OverlayManager;->context:Landroid/content/Context;

    const-class v3, Lcom/amazon/ags/html5/overlay/GameCircleAlertUserInterface;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 131
    const/high16 v1, 0x14010000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 134
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    const-string/jumbo v1, "OVERLAY_DATA_BUNDLE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    const-string/jumbo v1, "OVERLAY_SESSION_CLIENT_VERSION"

    iget-object v2, p0, Lcom/amazon/ags/html5/overlay/OverlayManager;->overlaySessionInformation:Lcom/amazon/ags/html5/overlay/OverlaySessionInformation;

    invoke-virtual {v2}, Lcom/amazon/ags/html5/overlay/OverlaySessionInformation;->getClientVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    const-string/jumbo v1, "OVERLAY_SESSION_CONTENT_VERSION"

    iget-object v2, p0, Lcom/amazon/ags/html5/overlay/OverlayManager;->overlaySessionInformation:Lcom/amazon/ags/html5/overlay/OverlaySessionInformation;

    invoke-virtual {v2}, Lcom/amazon/ags/html5/overlay/OverlaySessionInformation;->getContentVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    const-string/jumbo v1, "OVERLAY_SESSION_APPLICATION_NAME"

    iget-object v2, p0, Lcom/amazon/ags/html5/overlay/OverlayManager;->overlaySessionInformation:Lcom/amazon/ags/html5/overlay/OverlaySessionInformation;

    invoke-virtual {v2}, Lcom/amazon/ags/html5/overlay/OverlaySessionInformation;->getApplicationName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    const-string/jumbo v1, "OVERLAY_SESSION_LANGUAGE_CODE"

    iget-object v2, p0, Lcom/amazon/ags/html5/overlay/OverlayManager;->overlaySessionInformation:Lcom/amazon/ags/html5/overlay/OverlaySessionInformation;

    invoke-virtual {v2}, Lcom/amazon/ags/html5/overlay/OverlaySessionInformation;->getLocalizationUtil()Lcom/amazon/ags/html5/util/LocalizationUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/ags/html5/util/LocalizationUtil;->getLanguageCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    const-string/jumbo v1, "OVERLAY_SESSION_COUNTRY_CODE"

    iget-object v2, p0, Lcom/amazon/ags/html5/overlay/OverlayManager;->overlaySessionInformation:Lcom/amazon/ags/html5/overlay/OverlaySessionInformation;

    invoke-virtual {v2}, Lcom/amazon/ags/html5/overlay/OverlaySessionInformation;->getLocalizationUtil()Lcom/amazon/ags/html5/util/LocalizationUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/ags/html5/util/LocalizationUtil;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    const-string/jumbo v1, "OVERLAY_SESSION_DEVICE_IDENTIFIER"

    invoke-static {}, Lcom/amazon/ags/html5/util/DeviceInfo;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    const-string/jumbo v1, "OVERLAY_SESSION_DEVICE_MANUFACTURER"

    invoke-static {}, Lcom/amazon/ags/html5/util/DeviceInfo;->getManufacturer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    const-string/jumbo v1, "OVERLAY_SESSION_DEVICE_MODEL"

    invoke-static {}, Lcom/amazon/ags/html5/util/DeviceInfo;->getModel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    const-string/jumbo v1, "OVERLAY_SESSION_DEVICE_TYPE"

    iget-object v2, p0, Lcom/amazon/ags/html5/overlay/OverlayManager;->overlaySessionInformation:Lcom/amazon/ags/html5/overlay/OverlaySessionInformation;

    invoke-virtual {v2}, Lcom/amazon/ags/html5/overlay/OverlaySessionInformation;->getDeviceInfo()Lcom/amazon/ags/html5/util/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/ags/html5/util/DeviceInfo;->getDeviceType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    const-string/jumbo v1, "OVERLAY_SESSION_VARIATION_CACHE"

    invoke-direct {p0}, Lcom/amazon/ags/html5/overlay/OverlayManager;->getVariationCacheJson()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    iget-object v1, p0, Lcom/amazon/ags/html5/overlay/OverlayManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 148
    return-void
.end method

.method private showHtmlOverlay(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 95
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 97
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/amazon/ags/html5/overlay/OverlayManager;->context:Landroid/content/Context;

    const-class v3, Lcom/amazon/ags/html5/overlay/GameCircleUserInterface;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 103
    const/high16 v1, 0x14010000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    const-string/jumbo v1, "OVERLAY_DATA_BUNDLE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    const-string/jumbo v1, "OVERLAY_SESSION_CLIENT_VERSION"

    iget-object v2, p0, Lcom/amazon/ags/html5/overlay/OverlayManager;->overlaySessionInformation:Lcom/amazon/ags/html5/overlay/OverlaySessionInformation;

    invoke-virtual {v2}, Lcom/amazon/ags/html5/overlay/OverlaySessionInformation;->getClientVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    const-string/jumbo v1, "OVERLAY_SESSION_CONTENT_VERSION"

    iget-object v2, p0, Lcom/amazon/ags/html5/overlay/OverlayManager;->overlaySessionInformation:Lcom/amazon/ags/html5/overlay/OverlaySessionInformation;

    invoke-virtual {v2}, Lcom/amazon/ags/html5/overlay/OverlaySessionInformation;->getContentVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    const-string/jumbo v1, "OVERLAY_SESSION_APPLICATION_NAME"

    iget-object v2, p0, Lcom/amazon/ags/html5/overlay/OverlayManager;->overlaySessionInformation:Lcom/amazon/ags/html5/overlay/OverlaySessionInformation;

    invoke-virtual {v2}, Lcom/amazon/ags/html5/overlay/OverlaySessionInformation;->getApplicationName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    const-string/jumbo v1, "OVERLAY_SESSION_LANGUAGE_CODE"

    iget-object v2, p0, Lcom/amazon/ags/html5/overlay/OverlayManager;->overlaySessionInformation:Lcom/amazon/ags/html5/overlay/OverlaySessionInformation;

    invoke-virtual {v2}, Lcom/amazon/ags/html5/overlay/OverlaySessionInformation;->getLocalizationUtil()Lcom/amazon/ags/html5/util/LocalizationUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/ags/html5/util/LocalizationUtil;->getLanguageCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    const-string/jumbo v1, "OVERLAY_SESSION_COUNTRY_CODE"

    iget-object v2, p0, Lcom/amazon/ags/html5/overlay/OverlayManager;->overlaySessionInformation:Lcom/amazon/ags/html5/overlay/OverlaySessionInformation;

    invoke-virtual {v2}, Lcom/amazon/ags/html5/overlay/OverlaySessionInformation;->getLocalizationUtil()Lcom/amazon/ags/html5/util/LocalizationUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/ags/html5/util/LocalizationUtil;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    const-string/jumbo v1, "OVERLAY_SESSION_DEVICE_IDENTIFIER"

    invoke-static {}, Lcom/amazon/ags/html5/util/DeviceInfo;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    const-string/jumbo v1, "OVERLAY_SESSION_DEVICE_MANUFACTURER"

    invoke-static {}, Lcom/amazon/ags/html5/util/DeviceInfo;->getManufacturer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    const-string/jumbo v1, "OVERLAY_SESSION_DEVICE_MODEL"

    invoke-static {}, Lcom/amazon/ags/html5/util/DeviceInfo;->getModel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    const-string/jumbo v1, "OVERLAY_SESSION_DEVICE_TYPE"

    iget-object v2, p0, Lcom/amazon/ags/html5/overlay/OverlayManager;->overlaySessionInformation:Lcom/amazon/ags/html5/overlay/OverlaySessionInformation;

    invoke-virtual {v2}, Lcom/amazon/ags/html5/overlay/OverlaySessionInformation;->getDeviceInfo()Lcom/amazon/ags/html5/util/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/ags/html5/util/DeviceInfo;->getDeviceType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    const-string/jumbo v1, "OVERLAY_SESSION_VARIATION_CACHE"

    invoke-direct {p0}, Lcom/amazon/ags/html5/overlay/OverlayManager;->getVariationCacheJson()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    iget-object v1, p0, Lcom/amazon/ags/html5/overlay/OverlayManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 120
    return-void
.end method


# virtual methods
.method public notifyCurrentActivityChanged(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 288
    invoke-direct {p0}, Lcom/amazon/ags/html5/overlay/OverlayManager;->refreshActivity()V

    .line 289
    return-void
.end method

.method public notifyToastDestroyed()V
    .locals 0

    .prologue
    .line 276
    invoke-direct {p0}, Lcom/amazon/ags/html5/overlay/OverlayManager;->processNextToast()V

    .line 277
    return-void
.end method

.method public showAlert(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/amazon/ags/html5/overlay/OverlayManager;->showHtmlAlert(Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public showOverlay(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/amazon/ags/html5/overlay/OverlayManager;->kindleFireProxy:Lcom/amazon/ags/client/KindleFireProxy;

    invoke-interface {v0}, Lcom/amazon/ags/client/KindleFireProxy;->isOverlaysSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/amazon/ags/html5/overlay/OverlayManager;->kindleFireProxy:Lcom/amazon/ags/client/KindleFireProxy;

    invoke-interface {v0, p1}, Lcom/amazon/ags/client/KindleFireProxy;->showOverlay(Ljava/lang/String;)V

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/ags/html5/overlay/OverlayManager;->showHtmlOverlay(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public declared-synchronized showToast(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 232
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amazon/ags/html5/overlay/OverlayManager;->pendingToasts:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 233
    invoke-direct {p0}, Lcom/amazon/ags/html5/overlay/OverlayManager;->processNextToast()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    monitor-exit p0

    return-void

    .line 232
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
