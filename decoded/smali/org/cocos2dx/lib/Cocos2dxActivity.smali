.class public Lorg/cocos2dx/lib/Cocos2dxActivity;
.super Lcom/leanplum/activities/LeanplumActivity;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field protected static t:Lorg/cocos2dx/lib/Cocos2dxMusic;

.field protected static u:Lorg/cocos2dx/lib/Cocos2dxSound;

.field protected static v:Lorg/cocos2dx/lib/Cocos2dxAccelerometer;

.field protected static w:Z

.field protected static x:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    sput-boolean v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->w:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/leanplum/activities/LeanplumActivity;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 265
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 266
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 267
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string/jumbo v1, "Ok"

    new-instance v2, Lorg/cocos2dx/lib/a;

    invoke-direct {v2, p0}, Lorg/cocos2dx/lib/a;-><init>(Lorg/cocos2dx/lib/Cocos2dxActivity;)V

    .line 268
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 274
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 276
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 277
    return-void
.end method

.method static synthetic a(Lorg/cocos2dx/lib/Cocos2dxActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lorg/cocos2dx/lib/Cocos2dxActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static disableAccelerometer()V
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    sput-boolean v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->w:Z

    .line 110
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->v:Lorg/cocos2dx/lib/Cocos2dxAccelerometer;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->disable()V

    .line 111
    return-void
.end method

.method public static enableAccelerometer()V
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x1

    sput-boolean v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->w:Z

    .line 105
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->v:Lorg/cocos2dx/lib/Cocos2dxAccelerometer;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->enable()V

    .line 106
    return-void
.end method

.method public static end()V
    .locals 1

    .prologue
    .line 194
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->t:Lorg/cocos2dx/lib/Cocos2dxMusic;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxMusic;->end()V

    .line 195
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->u:Lorg/cocos2dx/lib/Cocos2dxSound;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxSound;->end()V

    .line 196
    return-void
.end method

.method public static getBackgroundMusicVolume()F
    .locals 1

    .prologue
    .line 142
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->t:Lorg/cocos2dx/lib/Cocos2dxMusic;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxMusic;->getBackgroundVolume()F

    move-result v0

    return v0
.end method

.method public static getCocos2dxCachePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static getCocos2dxPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static getCocos2dxWritablePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static getCurrentLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 92
    return-object v0
.end method

.method public static getDeviceModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static getEffectsVolume()F
    .locals 1

    .prologue
    .line 166
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->u:Lorg/cocos2dx/lib/Cocos2dxSound;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxSound;->getEffectsVolume()F

    move-result v0

    return v0
.end method

.method public static isBackgroundMusicPlaying()Z
    .locals 1

    .prologue
    .line 138
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->t:Lorg/cocos2dx/lib/Cocos2dxMusic;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxMusic;->isBackgroundMusicPlaying()Z

    move-result v0

    return v0
.end method

.method private static native nativeSetPaths(Ljava/lang/String;)V
.end method

.method public static pauseAllEffects()V
    .locals 1

    .prologue
    .line 186
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->u:Lorg/cocos2dx/lib/Cocos2dxSound;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxSound;->pauseAllEffects()V

    .line 187
    return-void
.end method

.method public static pauseBackgroundMusic()V
    .locals 1

    .prologue
    .line 126
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->t:Lorg/cocos2dx/lib/Cocos2dxMusic;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxMusic;->pauseBackgroundMusic()V

    .line 127
    return-void
.end method

.method public static pauseEffect(I)V
    .locals 1

    .prologue
    .line 158
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->u:Lorg/cocos2dx/lib/Cocos2dxSound;

    invoke-virtual {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxSound;->pauseEffect(I)V

    .line 159
    return-void
.end method

.method public static playBackgroundMusic(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->t:Lorg/cocos2dx/lib/Cocos2dxMusic;

    invoke-virtual {v0, p0, p1}, Lorg/cocos2dx/lib/Cocos2dxMusic;->playBackgroundMusic(Ljava/lang/String;Z)V

    .line 119
    return-void
.end method

.method public static playEffect(Ljava/lang/String;Z)I
    .locals 1

    .prologue
    .line 150
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->u:Lorg/cocos2dx/lib/Cocos2dxSound;

    invoke-virtual {v0, p0, p1}, Lorg/cocos2dx/lib/Cocos2dxSound;->playEffect(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public static preloadBackgroundMusic(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->t:Lorg/cocos2dx/lib/Cocos2dxMusic;

    invoke-virtual {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxMusic;->preloadBackgroundMusic(Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public static preloadEffect(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 174
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->u:Lorg/cocos2dx/lib/Cocos2dxSound;

    invoke-virtual {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxSound;->preloadEffect(Ljava/lang/String;)I

    .line 175
    return-void
.end method

.method public static resumeAllEffects()V
    .locals 1

    .prologue
    .line 190
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->u:Lorg/cocos2dx/lib/Cocos2dxSound;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxSound;->resumeAllEffects()V

    .line 191
    return-void
.end method

.method public static resumeBackgroundMusic()V
    .locals 1

    .prologue
    .line 130
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->t:Lorg/cocos2dx/lib/Cocos2dxMusic;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxMusic;->resumeBackgroundMusic()V

    .line 131
    return-void
.end method

.method public static resumeEffect(I)V
    .locals 1

    .prologue
    .line 162
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->u:Lorg/cocos2dx/lib/Cocos2dxSound;

    invoke-virtual {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxSound;->resumeEffect(I)V

    .line 163
    return-void
.end method

.method public static rewindBackgroundMusic()V
    .locals 1

    .prologue
    .line 134
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->t:Lorg/cocos2dx/lib/Cocos2dxMusic;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxMusic;->rewindBackgroundMusic()V

    .line 135
    return-void
.end method

.method public static setBackgroundMusicVolume(F)V
    .locals 1

    .prologue
    .line 146
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->t:Lorg/cocos2dx/lib/Cocos2dxMusic;

    invoke-virtual {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxMusic;->setBackgroundVolume(F)V

    .line 147
    return-void
.end method

.method public static setEffectsVolume(F)V
    .locals 1

    .prologue
    .line 170
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->u:Lorg/cocos2dx/lib/Cocos2dxSound;

    invoke-virtual {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxSound;->setEffectsVolume(F)V

    .line 171
    return-void
.end method

.method public static showMessageBox(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 96
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 97
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 98
    new-instance v1, Lorg/cocos2dx/lib/o;

    invoke-direct {v1, p0, p1}, Lorg/cocos2dx/lib/o;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 100
    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxActivity;->x:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 101
    return-void
.end method

.method public static stopAllEffects()V
    .locals 1

    .prologue
    .line 182
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->u:Lorg/cocos2dx/lib/Cocos2dxSound;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxSound;->stopAllEffects()V

    .line 183
    return-void
.end method

.method public static stopBackgroundMusic()V
    .locals 1

    .prologue
    .line 122
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->t:Lorg/cocos2dx/lib/Cocos2dxMusic;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxMusic;->stopBackgroundMusic()V

    .line 123
    return-void
.end method

.method public static stopEffect(I)V
    .locals 1

    .prologue
    .line 154
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->u:Lorg/cocos2dx/lib/Cocos2dxSound;

    invoke-virtual {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxSound;->stopEffect(I)V

    .line 155
    return-void
.end method

.method public static terminateProcess()V
    .locals 1

    .prologue
    .line 226
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 227
    return-void
.end method

.method public static unloadEffect(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 178
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->u:Lorg/cocos2dx/lib/Cocos2dxSound;

    invoke-virtual {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxSound;->unloadEffect(Ljava/lang/String;)V

    .line 179
    return-void
.end method


# virtual methods
.method protected j(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 209
    sput-object p1, Lorg/cocos2dx/lib/Cocos2dxActivity;->b:Ljava/lang/String;

    .line 210
    return-void
.end method

.method protected k(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 218
    sput-object p1, Lorg/cocos2dx/lib/Cocos2dxActivity;->c:Ljava/lang/String;

    .line 219
    return-void
.end method

.method protected l(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 246
    sput-object p1, Lorg/cocos2dx/lib/Cocos2dxActivity;->a:Ljava/lang/String;

    .line 248
    const-string/jumbo v0, ""

    .line 250
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 252
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 257
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 258
    const-string/jumbo v1, "apk path"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->nativeSetPaths(Ljava/lang/String;)V

    .line 262
    return-void

    .line 253
    :catch_0
    move-exception v0

    .line 254
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 255
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Unable to locate assets, aborting..."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/leanplum/activities/LeanplumActivity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 77
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 78
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->v:Lorg/cocos2dx/lib/Cocos2dxAccelerometer;

    .line 81
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxMusic;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxMusic;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->t:Lorg/cocos2dx/lib/Cocos2dxMusic;

    .line 82
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxSound;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxSound;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->u:Lorg/cocos2dx/lib/Cocos2dxSound;

    .line 85
    invoke-static {p0}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->setContext(Landroid/content/Context;)V

    .line 87
    new-instance v0, Lorg/cocos2dx/lib/b;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/b;-><init>(Lorg/cocos2dx/lib/Cocos2dxActivity;)V

    sput-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->x:Landroid/os/Handler;

    .line 88
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 239
    invoke-super {p0}, Lcom/leanplum/activities/LeanplumActivity;->onPause()V

    .line 240
    sget-boolean v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->w:Z

    if-eqz v0, :cond_0

    .line 241
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->v:Lorg/cocos2dx/lib/Cocos2dxAccelerometer;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->disable()V

    .line 243
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 231
    invoke-super {p0}, Lcom/leanplum/activities/LeanplumActivity;->onResume()V

    .line 232
    sget-boolean v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->w:Z

    if-eqz v0, :cond_0

    .line 233
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->v:Lorg/cocos2dx/lib/Cocos2dxAccelerometer;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->enable()V

    .line 235
    :cond_0
    return-void
.end method
