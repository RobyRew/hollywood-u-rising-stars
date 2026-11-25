.class public Lcom/amazon/ags/jni/AGSJniHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final JNI_LIBRARY_NAME:Ljava/lang/String; = "AmazonGamesJni"

.field public static final TAG:Ljava/lang/String; = "AGSJniHandler"

.field private static libraryLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-boolean v0, Lcom/amazon/ags/jni/AGSJniHandler;->libraryLoaded:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initializeJni(Lcom/amazon/ags/api/AmazonGamesClient;)V
    .locals 2

    .prologue
    .line 33
    const-string/jumbo v0, "AGSJniHandler"

    const-string/jumbo v1, "Initializing Native Handlers"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-static {p0}, Lcom/amazon/ags/jni/gamecircle/GameCircleNativeHandler;->initializeNativeHandler(Lcom/amazon/ags/api/AmazonGames;)V

    .line 36
    invoke-static {p0}, Lcom/amazon/ags/jni/leaderboards/LeaderboardsNativeHandler;->initializeNativeHandler(Lcom/amazon/ags/api/AmazonGamesClient;)V

    .line 37
    invoke-static {p0}, Lcom/amazon/ags/jni/achievements/AchievementsNativeHandler;->initializeNativeHandler(Lcom/amazon/ags/api/AmazonGamesClient;)V

    .line 38
    invoke-static {p0}, Lcom/amazon/ags/jni/player/ProfilesNativeHandler;->initializeNativeHandler(Lcom/amazon/ags/api/AmazonGamesClient;)V

    .line 39
    invoke-static {}, Lcom/amazon/ags/jni/whispersync/WhispersyncNativeHandler;->initializeNativeHandler()V

    .line 40
    return-void
.end method

.method public static isLibraryLoaded()Z
    .locals 1

    .prologue
    .line 82
    sget-boolean v0, Lcom/amazon/ags/jni/AGSJniHandler;->libraryLoaded:Z

    return v0
.end method

.method public static native isLoaded()V
.end method

.method public static loadLibrary()V
    .locals 2

    .prologue
    .line 46
    :try_start_0
    invoke-static {}, Lcom/amazon/ags/jni/AGSJniHandler;->isLoaded()V

    .line 47
    const/4 v0, 0x1

    sput-boolean v0, Lcom/amazon/ags/jni/AGSJniHandler;->libraryLoaded:Z

    .line 48
    const-string/jumbo v0, "AGSJniHandler"

    const-string/jumbo v1, "AmazonGamesJni is already loaded"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    const-string/jumbo v0, "AGSJniHandler"

    const-string/jumbo v1, "AmazonGamesJni is not loaded, trying to load library"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :try_start_1
    const-string/jumbo v0, "AmazonGamesJni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 55
    const/4 v0, 0x1

    sput-boolean v0, Lcom/amazon/ags/jni/AGSJniHandler;->libraryLoaded:Z
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 57
    :catch_1
    move-exception v0

    .line 58
    const-string/jumbo v0, "AGSJniHandler"

    const-string/jumbo v1, "AmazonGamesJni not found.  Java Native Interface will not be available"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static native showGameCircleResponseFailure(JII)V
.end method

.method public static native showGameCircleResponseSuccess(JI)V
.end method

.method public static native showSignInPageResponseFailure(JII)V
.end method

.method public static native showSignInPageResponseSuccess(JI)V
.end method
