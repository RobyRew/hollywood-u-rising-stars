.class public Lorg/cocos2dx/lib/Cocos2dxSound;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/media/SoundPool;

.field private c:F

.field private d:F

.field private e:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final g:I

.field private final h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->g:I

    .line 60
    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->h:I

    .line 63
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->a:Landroid/content/Context;

    .line 64
    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxSound;->a()V

    .line 65
    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    const/high16 v2, 0x3f000000    # 0.5f

    .line 232
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 233
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x3

    invoke-direct {v0, v3, v1, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->b:Landroid/media/SoundPool;

    .line 234
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->f:Ljava/util/HashMap;

    .line 236
    iput v2, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->c:F

    .line 237
    iput v2, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->d:F

    .line 238
    return-void
.end method

.method private a(Z)V
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 243
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 244
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 245
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 246
    if-eqz p1, :cond_0

    .line 247
    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxSound;->pauseEffect(I)V

    goto :goto_0

    .line 249
    :cond_0
    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxSound;->resumeEffect(I)V

    goto :goto_0

    .line 252
    :cond_1
    return-void
.end method


# virtual methods
.method public createSoundIdFromAsset(Ljava/lang/String;)I
    .locals 5

    .prologue
    .line 220
    const/4 v0, -0x1

    .line 223
    :try_start_0
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->b:Landroid/media/SoundPool;

    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 228
    :goto_0
    return v0

    .line 224
    :catch_0
    move-exception v1

    .line 225
    const-string/jumbo v2, "Cocos2dxSound"

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

.method public end()V
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->b:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 213
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 214
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 216
    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxSound;->a()V

    .line 217
    return-void
.end method

.method public getEffectsVolume()F
    .locals 2

    .prologue
    .line 188
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->c:F

    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->d:F

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public pauseAllEffects()V
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxSound;->a(Z)V

    .line 170
    return-void
.end method

.method public pauseEffect(I)V
    .locals 3

    .prologue
    .line 150
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 152
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 153
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->b:Landroid/media/SoundPool;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/media/SoundPool;->pause(I)V

    .line 154
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->f:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    :cond_0
    return-void
.end method

.method public playEffect(Ljava/lang/String;Z)I
    .locals 8

    .prologue
    const/4 v5, -0x1

    .line 102
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/Integer;

    .line 104
    if-eqz v7, :cond_2

    .line 107
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->b:Landroid/media/SoundPool;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    .line 110
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->b:Landroid/media/SoundPool;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->c:F

    iget v3, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->d:F

    const/4 v4, 0x1

    if-eqz p2, :cond_1

    :goto_0
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    .line 114
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v7, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    :goto_1
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    :cond_0
    return v5

    .line 110
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 117
    :cond_2
    invoke-virtual {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxSound;->preloadEffect(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 118
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v5, :cond_0

    .line 134
    invoke-virtual {p0, p1, p2}, Lorg/cocos2dx/lib/Cocos2dxSound;->playEffect(Ljava/lang/String;Z)I

    goto :goto_1
.end method

.method public preloadEffect(Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 68
    .line 71
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 85
    :cond_0
    :goto_0
    return v0

    .line 74
    :cond_1
    invoke-virtual {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxSound;->createSoundIdFromAsset(Ljava/lang/String;)I

    move-result v0

    .line 76
    if-eq v0, v3, :cond_0

    .line 78
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->f:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public resumeAllEffects()V
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxSound;->a(Z)V

    .line 175
    return-void
.end method

.method public resumeEffect(I)V
    .locals 3

    .prologue
    .line 159
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 161
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 162
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->b:Landroid/media/SoundPool;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/media/SoundPool;->resume(I)V

    .line 163
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->f:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    :cond_0
    return-void
.end method

.method public setEffectsVolume(F)V
    .locals 5

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 194
    cmpg-float v2, p1, v1

    if-gez v2, :cond_2

    .line 197
    :goto_0
    cmpl-float v2, v1, v0

    if-lez v2, :cond_1

    .line 201
    :goto_1
    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->d:F

    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->c:F

    .line 204
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 205
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 207
    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->b:Landroid/media/SoundPool;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v3, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->c:F

    iget v4, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->d:F

    invoke-virtual {v2, v0, v3, v4}, Landroid/media/SoundPool;->setVolume(IFF)V

    goto :goto_2

    .line 209
    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    move v1, p1

    goto :goto_0
.end method

.method public stopAllEffects()V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 180
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 182
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 183
    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxSound;->stopEffect(I)V

    goto :goto_0

    .line 185
    :cond_0
    return-void
.end method

.method public stopEffect(I)V
    .locals 3

    .prologue
    .line 141
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 143
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 144
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->b:Landroid/media/SoundPool;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/media/SoundPool;->stop(I)V

    .line 145
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->f:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    :cond_0
    return-void
.end method

.method public unloadEffect(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 90
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 92
    if-eqz v0, :cond_0

    .line 94
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->b:Landroid/media/SoundPool;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->unload(I)Z

    .line 97
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    :cond_0
    return-void
.end method
