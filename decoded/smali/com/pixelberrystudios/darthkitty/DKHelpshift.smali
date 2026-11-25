.class public Lcom/pixelberrystudios/darthkitty/DKHelpshift;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Landroid/app/Activity;

.field private static b:Ljava/util/HashMap;

.field private static c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static d:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/pixelberrystudios/darthkitty/DKHelpshift;->b:Ljava/util/HashMap;

    .line 26
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/pixelberrystudios/darthkitty/DKHelpshift;->c:Ljava/util/Set;

    .line 32
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/pixelberrystudios/darthkitty/DKHelpshift;->d:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static native DKHelpShiftOnReceiveNotificationCount(I)V
.end method

.method static synthetic a()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKHelpshift;->b:Ljava/util/HashMap;

    return-object v0
.end method

.method public static addTag(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 124
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKHelpshift;->c:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 125
    invoke-static {}, Lcom/pixelberrystudios/darthkitty/DKHelpshift;->updateMetadata()V

    .line 126
    return-void
.end method

.method static synthetic b()Ljava/util/Set;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKHelpshift;->c:Ljava/util/Set;

    return-object v0
.end method

.method private static c()Ljava/util/HashMap;
    .locals 3

    .prologue
    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 43
    const-string/jumbo v1, "enableFullPrivacy"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    return-object v0
.end method

.method public static clearMetadata()V
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKHelpshift;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 109
    invoke-static {}, Lcom/pixelberrystudios/darthkitty/DKHelpshift;->updateMetadata()V

    .line 110
    return-void
.end method

.method public static clearTags()V
    .locals 1

    .prologue
    .line 119
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKHelpshift;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 120
    invoke-static {}, Lcom/pixelberrystudios/darthkitty/DKHelpshift;->updateMetadata()V

    .line 121
    return-void
.end method

.method public static getNotificationCountAsync()V
    .locals 2

    .prologue
    .line 147
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKHelpshift;->a:Landroid/app/Activity;

    new-instance v1, Lcom/pixelberrystudios/darthkitty/ao;

    invoke-direct {v1}, Lcom/pixelberrystudios/darthkitty/ao;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 171
    return-void
.end method

.method public static leaveBreadCrumb(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 104
    invoke-static {p0}, Lcom/helpshift/ea;->a(Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public static putMetadata(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKHelpshift;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    invoke-static {}, Lcom/pixelberrystudios/darthkitty/DKHelpshift;->updateMetadata()V

    .line 116
    return-void
.end method

.method public static reportIssue()V
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKHelpshift;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/helpshift/ea;->a(Landroid/app/Activity;)V

    .line 74
    return-void
.end method

.method public static setActivity(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 37
    sput-object p0, Lcom/pixelberrystudios/darthkitty/DKHelpshift;->a:Landroid/app/Activity;

    .line 38
    return-void
.end method

.method public static setUserIdentifier(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKHelpshift;->a:Landroid/app/Activity;

    invoke-static {v0, p0}, Lcom/helpshift/ea;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public static showFAQ(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 88
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKHelpshift;->a:Landroid/app/Activity;

    invoke-static {}, Lcom/pixelberrystudios/darthkitty/DKHelpshift;->c()Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/helpshift/ea;->b(Landroid/app/Activity;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 92
    return-void
.end method

.method public static showFAQs()V
    .locals 2

    .prologue
    .line 95
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKHelpshift;->a:Landroid/app/Activity;

    invoke-static {}, Lcom/pixelberrystudios/darthkitty/DKHelpshift;->c()Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/helpshift/ea;->b(Landroid/app/Activity;Ljava/util/HashMap;)V

    .line 96
    return-void
.end method

.method public static showInbox()V
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKHelpshift;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/helpshift/ea;->a(Landroid/app/Activity;)V

    .line 78
    return-void
.end method

.method public static showSection(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 81
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKHelpshift;->a:Landroid/app/Activity;

    invoke-static {}, Lcom/pixelberrystudios/darthkitty/DKHelpshift;->c()Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/helpshift/ea;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 82
    return-void
.end method

.method public static showSupport()V
    .locals 2

    .prologue
    .line 48
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKHelpshift;->d:[Ljava/lang/String;

    sget v1, Lcom/pixelberrystudios/hssandroid/PermissionsHelper;->HELPSHIFT_PERMISSIONS_REQUEST:I

    invoke-static {v0, v1}, Lcom/pixelberrystudios/hssandroid/PermissionsHelper;->requestPermissionsIfNeeded([Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKHelpshift;->a:Landroid/app/Activity;

    invoke-static {}, Lcom/pixelberrystudios/darthkitty/DKHelpshift;->c()Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/helpshift/ea;->b(Landroid/app/Activity;Ljava/util/HashMap;)V

    .line 52
    :cond_0
    return-void
.end method

.method public static showSupportWithReportAndResponses()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 57
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKHelpshift;->d:[Ljava/lang/String;

    sget v1, Lcom/pixelberrystudios/hssandroid/PermissionsHelper;->HELPSHIFT_PERMISSIONS_REQUEST:I

    invoke-static {v0, v1}, Lcom/pixelberrystudios/hssandroid/PermissionsHelper;->requestPermissionsIfNeeded([Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 60
    invoke-static {}, Lcom/pixelberrystudios/darthkitty/DKHelpshift;->c()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 61
    const-string/jumbo v1, "showConvOnReportIssue"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string/jumbo v1, "showReportIssue"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v1, Lcom/pixelberrystudios/darthkitty/DKHelpshift;->a:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/helpshift/ea;->b(Landroid/app/Activity;Ljava/util/HashMap;)V

    .line 65
    :cond_0
    return-void
.end method

.method public static updateMetadata()V
    .locals 1

    .prologue
    .line 129
    new-instance v0, Lcom/pixelberrystudios/darthkitty/an;

    invoke-direct {v0}, Lcom/pixelberrystudios/darthkitty/an;-><init>()V

    invoke-static {v0}, Lcom/helpshift/ea;->a(Lcom/helpshift/bj;)V

    .line 142
    return-void
.end method

.method public static willPermissionsBeAsked()Z
    .locals 1

    .prologue
    .line 174
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKHelpshift;->d:[Ljava/lang/String;

    invoke-static {v0}, Lcom/pixelberrystudios/hssandroid/PermissionsHelper;->willPermissionsBeAsked([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
