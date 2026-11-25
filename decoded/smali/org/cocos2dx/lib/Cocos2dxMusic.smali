.class public Lorg/cocos2dx/lib/Cocos2dxMusic;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:F

.field private b:F

.field private c:Landroid/content/Context;

.field private d:Landroid/media/MediaPlayer;

.field private e:Z

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->c:Landroid/content/Context;

    .line 48
    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxMusic;->a()V

    .line 49
    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/media/MediaPlayer;
    .locals 6

    .prologue
    .line 222
    .line 225
    :try_start_0
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v4

    .line 227
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 228
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 229
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    .line 228
    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 230
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 232
    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->a:F

    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->b:F

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    :goto_0
    return-object v0

    .line 233
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 234
    const/4 v0, 0x0

    .line 235
    const-string/jumbo v2, "Cocos2dxMusic"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/high16 v0, 0x3f000000    # 0.5f

    .line 209
    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->a:F

    .line 210
    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->b:F

    .line 211
    iput-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->d:Landroid/media/MediaPlayer;

    .line 212
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->e:Z

    .line 213
    iput-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->f:Ljava/lang/String;

    .line 214
    return-void
.end method

.method private b()Z
    .locals 2

    .prologue
    .line 242
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public end()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->d:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 182
    :cond_0
    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxMusic;->a()V

    .line 183
    return-void
.end method

.method public getBackgroundVolume()F
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->d:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 187
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->a:F

    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->b:F

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 189
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBackgroundMusicPlaying()Z
    .locals 1

    .prologue
    .line 166
    .line 168
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->d:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 169
    const/4 v0, 0x0

    .line 174
    :goto_0
    return v0

    .line 171
    :cond_0
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    goto :goto_0
.end method

.method public pauseBackgroundMusic()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->d:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->e:Z

    .line 134
    :cond_0
    return-void
.end method

.method public playBackgroundMusic(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->f:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 71
    invoke-direct {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxMusic;->a(Ljava/lang/String;)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->d:Landroid/media/MediaPlayer;

    .line 72
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->f:Ljava/lang/String;

    .line 89
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->d:Landroid/media/MediaPlayer;

    if-nez v0, :cond_3

    .line 90
    const-string/jumbo v0, "Cocos2dxMusic"

    const-string/jumbo v1, "playBackgroundMusic: background media player is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :goto_1
    return-void

    .line 75
    :cond_1
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->f:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->d:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 80
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 82
    :cond_2
    invoke-direct {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxMusic;->a(Ljava/lang/String;)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->d:Landroid/media/MediaPlayer;

    .line 85
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->f:Ljava/lang/String;

    goto :goto_0

    .line 93
    :cond_3
    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxMusic;->b()Z

    move-result v0

    if-nez v0, :cond_4

    .line 94
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 97
    :cond_4
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 100
    :try_start_0
    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxMusic;->b()Z

    move-result v0

    if-nez v0, :cond_5

    .line 101
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 103
    :cond_5
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->d:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 104
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->e:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 107
    :catch_0
    move-exception v0

    .line 108
    const-string/jumbo v0, "Cocos2dxMusic"

    const-string/jumbo v1, "playBackgroundMusic: error state"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public preloadBackgroundMusic(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->f:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 56
    :cond_0
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->d:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 57
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 60
    :cond_1
    invoke-direct {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxMusic;->a(Ljava/lang/String;)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->d:Landroid/media/MediaPlayer;

    .line 63
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->f:Ljava/lang/String;

    .line 65
    :cond_2
    return-void
.end method

.method public resumeBackgroundMusic()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->d:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->e:Z

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->e:Z

    .line 141
    :cond_0
    return-void
.end method

.method public rewindBackgroundMusic()V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->d:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 145
    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxMusic;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 150
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxMusic;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 151
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 155
    :goto_0
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->d:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 156
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->e:Z

    .line 163
    :cond_1
    :goto_1
    return-void

    .line 153
    :cond_2
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 159
    :catch_0
    move-exception v0

    .line 160
    const-string/jumbo v0, "Cocos2dxMusic"

    const-string/jumbo v1, "rewindBackgroundMusic: error state"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setBackgroundVolume(F)V
    .locals 3

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 194
    cmpg-float v2, p1, v1

    if-gez v2, :cond_2

    .line 198
    :goto_0
    cmpl-float v2, v1, v0

    if-lez v2, :cond_1

    .line 202
    :goto_1
    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->b:F

    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->a:F

    .line 203
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->d:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->d:Landroid/media/MediaPlayer;

    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->a:F

    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->b:F

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 206
    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    move v1, p1

    goto :goto_0
.end method

.method public stopBackgroundMusic()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 114
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->d:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 117
    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxMusic;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 119
    iput-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->d:Landroid/media/MediaPlayer;

    .line 120
    iput-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->f:Ljava/lang/String;

    .line 125
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->e:Z

    .line 127
    :cond_1
    return-void
.end method
