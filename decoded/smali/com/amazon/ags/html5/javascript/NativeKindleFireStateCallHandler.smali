.class public Lcom/amazon/ags/html5/javascript/NativeKindleFireStateCallHandler;
.super Lcom/amazon/ags/html5/javascript/CallHandlerBase;
.source "SourceFile"


# static fields
.field private static final GC_KINDLE_SETTINGS_ACTION:Ljava/lang/String; = "com.amazon.ags.app.AMAZON_GAMES_SETTINGS"

.field private static final GC_PACKAGE_NAME:Ljava/lang/String; = "com.amazon.ags.app"

.field private static final supportedCalls:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final context:Landroid/content/Context;

.field private final kindleFireProxy:Lcom/amazon/ags/client/KindleFireProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 29
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "isKindle"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "isGCServiceReady"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "isKindleRegistered"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "hasOptedIn"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "isWhispersyncEnabled"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string/jumbo v3, "setOptIn"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "canDisplayKindleSettings"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string/jumbo v3, "launchKindleSettings"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/amazon/ags/html5/javascript/NativeKindleFireStateCallHandler;->supportedCalls:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/amazon/ags/client/KindleFireProxy;)V
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/amazon/ags/html5/javascript/NativeKindleFireStateCallHandler;->supportedCalls:Ljava/util/Set;

    invoke-direct {p0, p2, v0}, Lcom/amazon/ags/html5/javascript/CallHandlerBase;-><init>(Landroid/os/Handler;Ljava/util/Set;)V

    .line 50
    iput-object p3, p0, Lcom/amazon/ags/html5/javascript/NativeKindleFireStateCallHandler;->kindleFireProxy:Lcom/amazon/ags/client/KindleFireProxy;

    .line 51
    iput-object p1, p0, Lcom/amazon/ags/html5/javascript/NativeKindleFireStateCallHandler;->context:Landroid/content/Context;

    .line 52
    return-void
.end method

.method private checkKindleGameSettingsAvailability()Z
    .locals 3

    .prologue
    .line 120
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 121
    const-string/jumbo v1, "com.amazon.ags.app.AMAZON_GAMES_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    const-string/jumbo v1, "com.amazon.ags.app"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    iget-object v1, p0, Lcom/amazon/ags/html5/javascript/NativeKindleFireStateCallHandler;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 124
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private launchSettings()V
    .locals 2

    .prologue
    .line 128
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 129
    const-string/jumbo v1, "com.amazon.ags.app.AMAZON_GAMES_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    const-string/jumbo v1, "com.amazon.ags.app"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    const/high16 v1, 0x10010000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 132
    iget-object v1, p0, Lcom/amazon/ags/html5/javascript/NativeKindleFireStateCallHandler;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 133
    return-void
.end method

.method private makeJsonReplyForSingleValue(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 109
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 111
    :try_start_0
    const-string/jumbo v1, "value"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 112
    :catch_0
    move-exception v0

    .line 113
    iget-object v1, p0, Lcom/amazon/ags/html5/javascript/NativeKindleFireStateCallHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to make JSON relpy to Javascript for value ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected handleMessage(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 56
    iget-object v0, p0, Lcom/amazon/ags/html5/javascript/NativeKindleFireStateCallHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Processing request ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] for call type ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const/4 v0, 0x0

    .line 60
    const-string/jumbo v3, "isKindle"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 61
    iget-object v0, p0, Lcom/amazon/ags/html5/javascript/NativeKindleFireStateCallHandler;->kindleFireProxy:Lcom/amazon/ags/client/KindleFireProxy;

    invoke-interface {v0}, Lcom/amazon/ags/client/KindleFireProxy;->isKindle()Z

    move-result v0

    .line 62
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/ags/html5/javascript/NativeKindleFireStateCallHandler;->makeJsonReplyForSingleValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 98
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/amazon/ags/html5/javascript/NativeKindleFireStateCallHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Returning reply ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "] for request ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    if-eqz v0, :cond_9

    .line 101
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "SUCCESS"

    invoke-virtual {p0, p1, v0, v2}, Lcom/amazon/ags/html5/javascript/NativeKindleFireStateCallHandler;->sendReply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :goto_1
    return v1

    .line 63
    :cond_1
    const-string/jumbo v3, "isGCServiceReady"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 64
    iget-object v0, p0, Lcom/amazon/ags/html5/javascript/NativeKindleFireStateCallHandler;->kindleFireProxy:Lcom/amazon/ags/client/KindleFireProxy;

    invoke-interface {v0}, Lcom/amazon/ags/client/KindleFireProxy;->isReady()Z

    move-result v0

    .line 65
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/ags/html5/javascript/NativeKindleFireStateCallHandler;->makeJsonReplyForSingleValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 66
    :cond_2
    const-string/jumbo v3, "isKindleRegistered"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 67
    iget-object v0, p0, Lcom/amazon/ags/html5/javascript/NativeKindleFireStateCallHandler;->kindleFireProxy:Lcom/amazon/ags/client/KindleFireProxy;

    invoke-interface {v0}, Lcom/amazon/ags/client/KindleFireProxy;->isRegistered()Z

    move-result v0

    .line 68
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/ags/html5/javascript/NativeKindleFireStateCallHandler;->makeJsonReplyForSingleValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 69
    :cond_3
    const-string/jumbo v3, "hasOptedIn"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 70
    iget-object v0, p0, Lcom/amazon/ags/html5/javascript/NativeKindleFireStateCallHandler;->kindleFireProxy:Lcom/amazon/ags/client/KindleFireProxy;

    invoke-interface {v0}, Lcom/amazon/ags/client/KindleFireProxy;->isOptedIn()Z

    move-result v0

    .line 71
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/ags/html5/javascript/NativeKindleFireStateCallHandler;->makeJsonReplyForSingleValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 72
    :cond_4
    const-string/jumbo v3, "isWhispersyncEnabled"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 73
    iget-object v0, p0, Lcom/amazon/ags/html5/javascript/NativeKindleFireStateCallHandler;->kindleFireProxy:Lcom/amazon/ags/client/KindleFireProxy;

    invoke-interface {v0}, Lcom/amazon/ags/client/KindleFireProxy;->isWhispersyncEnabled()Z

    move-result v0

    .line 74
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/ags/html5/javascript/NativeKindleFireStateCallHandler;->makeJsonReplyForSingleValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 75
    :cond_5
    const-string/jumbo v3, "setOptIn"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 77
    :try_start_0
    const-string/jumbo v3, "parameters"

    invoke-virtual {p3, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 78
    const-string/jumbo v4, "hasOptedIn"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 79
    iget-object v4, p0, Lcom/amazon/ags/html5/javascript/NativeKindleFireStateCallHandler;->kindleFireProxy:Lcom/amazon/ags/client/KindleFireProxy;

    invoke-interface {v4, v3}, Lcom/amazon/ags/client/KindleFireProxy;->setOptIn(Z)V

    .line 80
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto/16 :goto_0

    .line 81
    :catch_0
    move-exception v3

    .line 82
    iget-object v4, p0, Lcom/amazon/ags/html5/javascript/NativeKindleFireStateCallHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Unable to get value for key [hasOptedIn]"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 84
    :cond_6
    const-string/jumbo v3, "canDisplayKindleSettings"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 85
    iget-object v0, p0, Lcom/amazon/ags/html5/javascript/NativeKindleFireStateCallHandler;->kindleFireProxy:Lcom/amazon/ags/client/KindleFireProxy;

    invoke-interface {v0}, Lcom/amazon/ags/client/KindleFireProxy;->isReady()Z

    move-result v0

    .line 86
    iget-object v3, p0, Lcom/amazon/ags/html5/javascript/NativeKindleFireStateCallHandler;->kindleFireProxy:Lcom/amazon/ags/client/KindleFireProxy;

    invoke-interface {v3}, Lcom/amazon/ags/client/KindleFireProxy;->isRegistered()Z

    move-result v3

    .line 87
    if-eqz v0, :cond_7

    if-eqz v3, :cond_7

    invoke-direct {p0}, Lcom/amazon/ags/html5/javascript/NativeKindleFireStateCallHandler;->checkKindleGameSettingsAvailability()Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    .line 88
    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/ags/html5/javascript/NativeKindleFireStateCallHandler;->makeJsonReplyForSingleValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    move v0, v2

    .line 87
    goto :goto_2

    .line 89
    :cond_8
    const-string/jumbo v3, "launchKindleSettings"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 91
    :try_start_1
    invoke-direct {p0}, Lcom/amazon/ags/html5/javascript/NativeKindleFireStateCallHandler;->launchSettings()V

    .line 92
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto/16 :goto_0

    .line 93
    :catch_1
    move-exception v3

    .line 94
    iget-object v4, p0, Lcom/amazon/ags/html5/javascript/NativeKindleFireStateCallHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Settings were either launched without checking that they are available or an expected error occurred"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_9
    move v1, v2

    .line 104
    goto/16 :goto_1
.end method
