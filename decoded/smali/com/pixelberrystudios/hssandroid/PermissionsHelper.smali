.class public Lcom/pixelberrystudios/hssandroid/PermissionsHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static GC_PERMISSIONS_REQUEST:I

.field public static HELPSHIFT_PERMISSIONS_REQUEST:I

.field public static KTPLAY_PERMISSIONS_REQUEST:I

.field public static LAUNCH_PERMISSIONS_REQUEST:I

.field public static PERMISSIONS_PREFS:Ljava/lang/String;

.field private static a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 17
    const/16 v0, 0x64

    sput v0, Lcom/pixelberrystudios/hssandroid/PermissionsHelper;->KTPLAY_PERMISSIONS_REQUEST:I

    .line 18
    const/16 v0, 0xc8

    sput v0, Lcom/pixelberrystudios/hssandroid/PermissionsHelper;->LAUNCH_PERMISSIONS_REQUEST:I

    .line 19
    const/16 v0, 0x12c

    sput v0, Lcom/pixelberrystudios/hssandroid/PermissionsHelper;->GC_PERMISSIONS_REQUEST:I

    .line 20
    const/16 v0, 0x190

    sput v0, Lcom/pixelberrystudios/hssandroid/PermissionsHelper;->HELPSHIFT_PERMISSIONS_REQUEST:I

    .line 25
    const-string/jumbo v0, "HSS-Permissions"

    sput-object v0, Lcom/pixelberrystudios/hssandroid/PermissionsHelper;->PERMISSIONS_PREFS:Ljava/lang/String;

    .line 30
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "android.permission.READ_PHONE_STATE"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "android.permission.GET_ACCOUNTS"

    aput-object v2, v0, v1

    sput-object v0, Lcom/pixelberrystudios/hssandroid/PermissionsHelper;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 150
    return-void
.end method

.method public static areAllPermissionsGranted([Ljava/lang/String;[I)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 72
    array-length v0, p0

    array-length v2, p1

    if-eq v0, v2, :cond_1

    .line 82
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    .line 76
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 77
    aget v2, p1, v0

    if-nez v2, :cond_0

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 82
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static areGCPermissionsEnabled()Z
    .locals 1

    .prologue
    .line 56
    const-string/jumbo v0, "android.permission.GET_ACCOUNTS"

    invoke-static {v0}, Lcom/pixelberrystudios/hssandroid/PermissionsHelper;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 142
    invoke-static {}, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->getInstance()Lcom/pixelberrystudios/iab/BaseIabActivity;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasAllPermissions([Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 86
    array-length v2, p0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, p0, v1

    .line 87
    invoke-static {v3}, Lcom/pixelberrystudios/hssandroid/PermissionsHelper;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 92
    :goto_1
    return v0

    .line 86
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 92
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static hasLaunchPermissionsBeenAsked()Z
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/pixelberrystudios/hssandroid/PermissionsHelper;->a:[Ljava/lang/String;

    invoke-static {v0}, Lcom/pixelberrystudios/hssandroid/PermissionsHelper;->hasAllPermissions([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->getInstance()Lcom/pixelberrystudios/iab/BaseIabActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pixelberrystudios/iab/BaseIabActivity;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static requestLaunchPermissions()V
    .locals 2

    .prologue
    .line 39
    sget-object v0, Lcom/pixelberrystudios/hssandroid/PermissionsHelper;->a:[Ljava/lang/String;

    sget v1, Lcom/pixelberrystudios/hssandroid/PermissionsHelper;->LAUNCH_PERMISSIONS_REQUEST:I

    invoke-static {v0, v1}, Lcom/pixelberrystudios/hssandroid/PermissionsHelper;->requestPermissionsIfNeeded([Ljava/lang/String;I)Z

    .line 40
    return-void
.end method

.method public static requestPermissionsIfNeeded([Ljava/lang/String;I)Z
    .locals 1

    .prologue
    .line 105
    invoke-static {p0}, Lcom/pixelberrystudios/hssandroid/PermissionsHelper;->hasAllPermissions([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    invoke-static {}, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->getInstance()Lcom/pixelberrystudios/iab/BaseIabActivity;

    move-result-object v0

    invoke-static {v0, p0, p1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 109
    const/4 v0, 0x1

    .line 111
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static willPermissionsBeAsked([Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 125
    invoke-static {}, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->getInstance()Lcom/pixelberrystudios/iab/BaseIabActivity;

    move-result-object v1

    .line 126
    sget-object v2, Lcom/pixelberrystudios/hssandroid/PermissionsHelper;->PERMISSIONS_PREFS:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 127
    array-length v3, p0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, p0, v1

    .line 130
    invoke-interface {v2, v4, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 131
    invoke-static {v4}, Lcom/pixelberrystudios/hssandroid/PermissionsHelper;->b(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 132
    invoke-static {}, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->getInstance()Lcom/pixelberrystudios/iab/BaseIabActivity;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not available and will not be asked"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pixelberrystudios/hssandroid/PermissionsHelper;->a(Ljava/lang/String;)V

    .line 138
    :goto_1
    return v0

    .line 127
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 138
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method
