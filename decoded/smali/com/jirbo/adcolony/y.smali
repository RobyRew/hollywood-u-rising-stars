.class public abstract Lcom/jirbo/adcolony/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field a:I

.field b:I

.field c:Ljava/lang/String;

.field d:Lcom/jirbo/adcolony/dg;

.field e:Lcom/jirbo/adcolony/dc;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;

.field k:D

.field l:D

.field m:I

.field n:Z

.field o:Z

.field p:Z

.field q:Z

.field r:Z

.field s:Lcom/jirbo/adcolony/an;

.field t:Lcom/jirbo/adcolony/aa;

.field u:Lcom/jirbo/adcolony/ah;

.field v:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field w:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/jirbo/adcolony/y;->a:I

    .line 26
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/jirbo/adcolony/y;->f:Ljava/lang/String;

    .line 27
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/jirbo/adcolony/y;->g:Ljava/lang/String;

    .line 28
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/jirbo/adcolony/y;->h:Ljava/lang/String;

    .line 29
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/jirbo/adcolony/y;->i:Ljava/lang/String;

    .line 30
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/jirbo/adcolony/y;->j:Ljava/lang/String;

    .line 32
    iput-wide v2, p0, Lcom/jirbo/adcolony/y;->k:D

    .line 33
    iput-wide v2, p0, Lcom/jirbo/adcolony/y;->l:D

    .line 47
    sget-object v0, Lcom/jirbo/adcolony/ah;->a:Lcom/jirbo/adcolony/ah;

    iput-object v0, p0, Lcom/jirbo/adcolony/y;->u:Lcom/jirbo/adcolony/ah;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/y;->v:Ljava/util/HashMap;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/y;->w:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    .prologue
    .line 56
    iget v0, p0, Lcom/jirbo/adcolony/y;->a:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method abstract a(Z)Z
.end method

.method public b()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 58
    iget v1, p0, Lcom/jirbo/adcolony/y;->a:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b(Z)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 99
    iget v0, p0, Lcom/jirbo/adcolony/y;->a:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    move v0, v1

    .line 168
    :goto_0
    return v0

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/jirbo/adcolony/y;->d()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    move v0, v2

    goto :goto_0

    .line 103
    :cond_1
    invoke-virtual {p0, v1}, Lcom/jirbo/adcolony/y;->a(Z)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    move v0, v2

    goto :goto_0

    .line 105
    :cond_2
    sget-object v0, Lcom/jirbo/adcolony/ba;->c:Lcom/jirbo/adcolony/cb;

    iget-object v3, p0, Lcom/jirbo/adcolony/y;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/jirbo/adcolony/cb;->f(Ljava/lang/String;)Lcom/jirbo/adcolony/dg;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/y;->d:Lcom/jirbo/adcolony/dg;

    .line 106
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/jirbo/adcolony/y;->d:Lcom/jirbo/adcolony/dg;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/dg;->j()Lcom/jirbo/adcolony/dc;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/jirbo/adcolony/y;->e:Lcom/jirbo/adcolony/dc;

    .line 107
    iget-object v0, p0, Lcom/jirbo/adcolony/y;->e:Lcom/jirbo/adcolony/dc;

    if-nez v0, :cond_4

    move v0, v2

    goto :goto_0

    .line 106
    :cond_3
    iget-object v0, p0, Lcom/jirbo/adcolony/y;->d:Lcom/jirbo/adcolony/dg;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/dg;->i()Lcom/jirbo/adcolony/dc;

    move-result-object v0

    goto :goto_1

    .line 109
    :cond_4
    iget-object v0, p0, Lcom/jirbo/adcolony/y;->v:Ljava/util/HashMap;

    const-string/jumbo v2, "replay"

    iget-object v3, p0, Lcom/jirbo/adcolony/y;->e:Lcom/jirbo/adcolony/dc;

    iget-object v3, v3, Lcom/jirbo/adcolony/dc;->w:Lcom/jirbo/adcolony/dk;

    iget-object v3, v3, Lcom/jirbo/adcolony/dk;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v0, p0, Lcom/jirbo/adcolony/y;->v:Ljava/util/HashMap;

    const-string/jumbo v2, "card_shown"

    iget-object v3, p0, Lcom/jirbo/adcolony/y;->e:Lcom/jirbo/adcolony/dc;

    iget-object v3, v3, Lcom/jirbo/adcolony/dc;->w:Lcom/jirbo/adcolony/dk;

    iget-object v3, v3, Lcom/jirbo/adcolony/dk;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object v0, p0, Lcom/jirbo/adcolony/y;->v:Ljava/util/HashMap;

    const-string/jumbo v2, "html5_interaction"

    iget-object v3, p0, Lcom/jirbo/adcolony/y;->e:Lcom/jirbo/adcolony/dc;

    iget-object v3, v3, Lcom/jirbo/adcolony/dc;->w:Lcom/jirbo/adcolony/dk;

    iget-object v3, v3, Lcom/jirbo/adcolony/dk;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v0, p0, Lcom/jirbo/adcolony/y;->v:Ljava/util/HashMap;

    const-string/jumbo v2, "cancel"

    iget-object v3, p0, Lcom/jirbo/adcolony/y;->e:Lcom/jirbo/adcolony/dc;

    iget-object v3, v3, Lcom/jirbo/adcolony/dc;->w:Lcom/jirbo/adcolony/dk;

    iget-object v3, v3, Lcom/jirbo/adcolony/dk;->d:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v0, p0, Lcom/jirbo/adcolony/y;->v:Ljava/util/HashMap;

    const-string/jumbo v2, "download"

    iget-object v3, p0, Lcom/jirbo/adcolony/y;->e:Lcom/jirbo/adcolony/dc;

    iget-object v3, v3, Lcom/jirbo/adcolony/dc;->w:Lcom/jirbo/adcolony/dk;

    iget-object v3, v3, Lcom/jirbo/adcolony/dk;->e:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v0, p0, Lcom/jirbo/adcolony/y;->v:Ljava/util/HashMap;

    const-string/jumbo v2, "skip"

    iget-object v3, p0, Lcom/jirbo/adcolony/y;->e:Lcom/jirbo/adcolony/dc;

    iget-object v3, v3, Lcom/jirbo/adcolony/dc;->w:Lcom/jirbo/adcolony/dk;

    iget-object v3, v3, Lcom/jirbo/adcolony/dk;->f:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v0, p0, Lcom/jirbo/adcolony/y;->v:Ljava/util/HashMap;

    const-string/jumbo v2, "info"

    iget-object v3, p0, Lcom/jirbo/adcolony/y;->e:Lcom/jirbo/adcolony/dc;

    iget-object v3, v3, Lcom/jirbo/adcolony/dc;->w:Lcom/jirbo/adcolony/dk;

    iget-object v3, v3, Lcom/jirbo/adcolony/dk;->g:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v0, p0, Lcom/jirbo/adcolony/y;->v:Ljava/util/HashMap;

    const-string/jumbo v2, "custom_event"

    iget-object v3, p0, Lcom/jirbo/adcolony/y;->e:Lcom/jirbo/adcolony/dc;

    iget-object v3, v3, Lcom/jirbo/adcolony/dc;->w:Lcom/jirbo/adcolony/dk;

    iget-object v3, v3, Lcom/jirbo/adcolony/dk;->h:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v0, p0, Lcom/jirbo/adcolony/y;->v:Ljava/util/HashMap;

    const-string/jumbo v2, "midpoint"

    iget-object v3, p0, Lcom/jirbo/adcolony/y;->e:Lcom/jirbo/adcolony/dc;

    iget-object v3, v3, Lcom/jirbo/adcolony/dc;->w:Lcom/jirbo/adcolony/dk;

    iget-object v3, v3, Lcom/jirbo/adcolony/dk;->i:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v0, p0, Lcom/jirbo/adcolony/y;->v:Ljava/util/HashMap;

    const-string/jumbo v2, "card_dissolved"

    iget-object v3, p0, Lcom/jirbo/adcolony/y;->e:Lcom/jirbo/adcolony/dc;

    iget-object v3, v3, Lcom/jirbo/adcolony/dc;->w:Lcom/jirbo/adcolony/dk;

    iget-object v3, v3, Lcom/jirbo/adcolony/dk;->j:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object v0, p0, Lcom/jirbo/adcolony/y;->v:Ljava/util/HashMap;

    const-string/jumbo v2, "start"

    iget-object v3, p0, Lcom/jirbo/adcolony/y;->e:Lcom/jirbo/adcolony/dc;

    iget-object v3, v3, Lcom/jirbo/adcolony/dc;->w:Lcom/jirbo/adcolony/dk;

    iget-object v3, v3, Lcom/jirbo/adcolony/dk;->k:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v0, p0, Lcom/jirbo/adcolony/y;->v:Ljava/util/HashMap;

    const-string/jumbo v2, "third_quartile"

    iget-object v3, p0, Lcom/jirbo/adcolony/y;->e:Lcom/jirbo/adcolony/dc;

    iget-object v3, v3, Lcom/jirbo/adcolony/dc;->w:Lcom/jirbo/adcolony/dk;

    iget-object v3, v3, Lcom/jirbo/adcolony/dk;->l:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object v0, p0, Lcom/jirbo/adcolony/y;->v:Ljava/util/HashMap;

    const-string/jumbo v2, "complete"

    iget-object v3, p0, Lcom/jirbo/adcolony/y;->e:Lcom/jirbo/adcolony/dc;

    iget-object v3, v3, Lcom/jirbo/adcolony/dc;->w:Lcom/jirbo/adcolony/dk;

    iget-object v3, v3, Lcom/jirbo/adcolony/dk;->m:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object v0, p0, Lcom/jirbo/adcolony/y;->v:Ljava/util/HashMap;

    const-string/jumbo v2, "continue"

    iget-object v3, p0, Lcom/jirbo/adcolony/y;->e:Lcom/jirbo/adcolony/dc;

    iget-object v3, v3, Lcom/jirbo/adcolony/dc;->w:Lcom/jirbo/adcolony/dk;

    iget-object v3, v3, Lcom/jirbo/adcolony/dk;->n:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v0, p0, Lcom/jirbo/adcolony/y;->v:Ljava/util/HashMap;

    const-string/jumbo v2, "in_video_engagement"

    iget-object v3, p0, Lcom/jirbo/adcolony/y;->e:Lcom/jirbo/adcolony/dc;

    iget-object v3, v3, Lcom/jirbo/adcolony/dc;->w:Lcom/jirbo/adcolony/dk;

    iget-object v3, v3, Lcom/jirbo/adcolony/dk;->o:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v0, p0, Lcom/jirbo/adcolony/y;->v:Ljava/util/HashMap;

    const-string/jumbo v2, "reward_v4vc"

    iget-object v3, p0, Lcom/jirbo/adcolony/y;->e:Lcom/jirbo/adcolony/dc;

    iget-object v3, v3, Lcom/jirbo/adcolony/dc;->w:Lcom/jirbo/adcolony/dk;

    iget-object v3, v3, Lcom/jirbo/adcolony/dk;->p:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v0, p0, Lcom/jirbo/adcolony/y;->v:Ljava/util/HashMap;

    const-string/jumbo v2, "v4iap"

    iget-object v3, p0, Lcom/jirbo/adcolony/y;->e:Lcom/jirbo/adcolony/dc;

    iget-object v3, v3, Lcom/jirbo/adcolony/dc;->w:Lcom/jirbo/adcolony/dk;

    iget-object v3, v3, Lcom/jirbo/adcolony/dk;->q:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v0, p0, Lcom/jirbo/adcolony/y;->v:Ljava/util/HashMap;

    const-string/jumbo v2, "first_quartile"

    iget-object v3, p0, Lcom/jirbo/adcolony/y;->e:Lcom/jirbo/adcolony/dc;

    iget-object v3, v3, Lcom/jirbo/adcolony/dc;->w:Lcom/jirbo/adcolony/dk;

    iget-object v3, v3, Lcom/jirbo/adcolony/dk;->r:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v0, p0, Lcom/jirbo/adcolony/y;->v:Ljava/util/HashMap;

    const-string/jumbo v2, "video_expanded"

    iget-object v3, p0, Lcom/jirbo/adcolony/y;->e:Lcom/jirbo/adcolony/dc;

    iget-object v3, v3, Lcom/jirbo/adcolony/dc;->w:Lcom/jirbo/adcolony/dk;

    iget-object v3, v3, Lcom/jirbo/adcolony/dk;->s:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v0, p0, Lcom/jirbo/adcolony/y;->v:Ljava/util/HashMap;

    const-string/jumbo v2, "sound_mute"

    iget-object v3, p0, Lcom/jirbo/adcolony/y;->e:Lcom/jirbo/adcolony/dc;

    iget-object v3, v3, Lcom/jirbo/adcolony/dc;->w:Lcom/jirbo/adcolony/dk;

    iget-object v3, v3, Lcom/jirbo/adcolony/dk;->t:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v0, p0, Lcom/jirbo/adcolony/y;->v:Ljava/util/HashMap;

    const-string/jumbo v2, "sound_unmute"

    iget-object v3, p0, Lcom/jirbo/adcolony/y;->e:Lcom/jirbo/adcolony/dc;

    iget-object v3, v3, Lcom/jirbo/adcolony/dc;->w:Lcom/jirbo/adcolony/dk;

    iget-object v3, v3, Lcom/jirbo/adcolony/dk;->u:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v0, p0, Lcom/jirbo/adcolony/y;->v:Ljava/util/HashMap;

    const-string/jumbo v2, "video_paused"

    iget-object v3, p0, Lcom/jirbo/adcolony/y;->e:Lcom/jirbo/adcolony/dc;

    iget-object v3, v3, Lcom/jirbo/adcolony/dc;->w:Lcom/jirbo/adcolony/dk;

    iget-object v3, v3, Lcom/jirbo/adcolony/dk;->v:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v0, p0, Lcom/jirbo/adcolony/y;->v:Ljava/util/HashMap;

    const-string/jumbo v2, "video_resumed"

    iget-object v3, p0, Lcom/jirbo/adcolony/y;->e:Lcom/jirbo/adcolony/dc;

    iget-object v3, v3, Lcom/jirbo/adcolony/dc;->w:Lcom/jirbo/adcolony/dk;

    iget-object v3, v3, Lcom/jirbo/adcolony/dk;->w:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v0, p0, Lcom/jirbo/adcolony/y;->v:Ljava/util/HashMap;

    const-string/jumbo v2, "native_start"

    iget-object v3, p0, Lcom/jirbo/adcolony/y;->e:Lcom/jirbo/adcolony/dc;

    iget-object v3, v3, Lcom/jirbo/adcolony/dc;->w:Lcom/jirbo/adcolony/dk;

    iget-object v3, v3, Lcom/jirbo/adcolony/dk;->x:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v0, p0, Lcom/jirbo/adcolony/y;->v:Ljava/util/HashMap;

    const-string/jumbo v2, "native_first_quartile"

    iget-object v3, p0, Lcom/jirbo/adcolony/y;->e:Lcom/jirbo/adcolony/dc;

    iget-object v3, v3, Lcom/jirbo/adcolony/dc;->w:Lcom/jirbo/adcolony/dk;

    iget-object v3, v3, Lcom/jirbo/adcolony/dk;->y:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object v0, p0, Lcom/jirbo/adcolony/y;->v:Ljava/util/HashMap;

    const-string/jumbo v2, "native_midpoint"

    iget-object v3, p0, Lcom/jirbo/adcolony/y;->e:Lcom/jirbo/adcolony/dc;

    iget-object v3, v3, Lcom/jirbo/adcolony/dc;->w:Lcom/jirbo/adcolony/dk;

    iget-object v3, v3, Lcom/jirbo/adcolony/dk;->z:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v0, p0, Lcom/jirbo/adcolony/y;->v:Ljava/util/HashMap;

    const-string/jumbo v2, "native_third_quartile"

    iget-object v3, p0, Lcom/jirbo/adcolony/y;->e:Lcom/jirbo/adcolony/dc;

    iget-object v3, v3, Lcom/jirbo/adcolony/dc;->w:Lcom/jirbo/adcolony/dk;

    iget-object v3, v3, Lcom/jirbo/adcolony/dk;->A:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v0, p0, Lcom/jirbo/adcolony/y;->v:Ljava/util/HashMap;

    const-string/jumbo v2, "native_complete"

    iget-object v3, p0, Lcom/jirbo/adcolony/y;->e:Lcom/jirbo/adcolony/dc;

    iget-object v3, v3, Lcom/jirbo/adcolony/dc;->w:Lcom/jirbo/adcolony/dk;

    iget-object v3, v3, Lcom/jirbo/adcolony/dk;->B:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v0, p0, Lcom/jirbo/adcolony/y;->v:Ljava/util/HashMap;

    const-string/jumbo v2, "native_overlay_click"

    iget-object v3, p0, Lcom/jirbo/adcolony/y;->e:Lcom/jirbo/adcolony/dc;

    iget-object v3, v3, Lcom/jirbo/adcolony/dc;->w:Lcom/jirbo/adcolony/dk;

    iget-object v3, v3, Lcom/jirbo/adcolony/dk;->C:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v0, p0, Lcom/jirbo/adcolony/y;->w:Ljava/util/HashMap;

    const-string/jumbo v2, "replay"

    iget-object v3, p0, Lcom/jirbo/adcolony/y;->e:Lcom/jirbo/adcolony/dc;

    iget-object v3, v3, Lcom/jirbo/adcolony/dc;->t:Lcom/jirbo/adcolony/ei;

    iget-object v3, v3, Lcom/jirbo/adcolony/ei;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v0, p0, Lcom/jirbo/adcolony/y;->w:Ljava/util/HashMap;

    const-string/jumbo v2, "card_shown"

    iget-object v3, p0, Lcom/jirbo/adcolony/y;->e:Lcom/jirbo/adcolony/dc;

    iget-object v3, v3, Lcom/jirbo/adcolony/dc;->t:Lcom/jirbo/adcolony/ei;

    iget-object v3, v3, Lcom/jirbo/adcolony/ei;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v0, p0, Lcom/jirbo/adcolony/y;->w:Ljava/util/HashMap;

    const-string/jumbo v2, "html5_interaction"

    iget-object v3, p0, Lcom/jirbo/adcolony/y;->e:Lcom/jirbo/adcolony/dc;

    iget-object v3, v3, Lcom/jirbo/adcolony/dc;->t:Lcom/jirbo/adcolony/ei;

    iget-object v3, v3, Lcom/jirbo/adcolony/ei;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v0, p0, Lcom/jirbo/adcolony/y;->w:Ljava/util/HashMap;

    const-string/jumbo v2, "cancel"

    iget-object v3, p0, Lcom/jirbo/adcolony/y;->e:Lcom/jirbo/adcolony/dc;

    iget-object v3, v3, Lcom/jirbo/adcolony/dc;->t:Lcom/jirbo/adcolony/ei;

    iget-object v3, v3, Lcom/jirbo/adcolony/ei;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v0, p0, Lcom/jirbo/adcolony/y;->w:Ljava/util/HashMap;

    const-string/jumbo v2, "download"

    iget-object v3, p0, Lcom/jirbo/adcolony/y;->e:Lcom/jirbo/adcolony/dc;

    iget-object v3, v3, Lcom/jirbo/adcolony/dc;->t:Lcom/jirbo/adcolony/ei;

    iget-object v3, v3, Lcom/jirbo/adcolony/ei;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v0, p0, Lcom/jirbo/adcolony/y;->w:Ljava/util/HashMap;

    const-string/jumbo v2, "skip"

    iget-object v3, p0, Lcom/jirbo/adcolony/y;->e:Lcom/jirbo/adcolony/dc;

    iget-object v3, v3, Lcom/jirbo/adcolony/dc;->t:Lcom/jirbo/adcolony/ei;

    iget-object v3, v3, Lcom/jirbo/adcolony/ei;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v0, p0, Lcom/jirbo/adcolony/y;->w:Ljava/util/HashMap;

    const-string/jumbo v2, "midpoint"

    iget-object v3, p0, Lcom/jirbo/adcolony/y;->e:Lcom/jirbo/adcolony/dc;

    iget-object v3, v3, Lcom/jirbo/adcolony/dc;->t:Lcom/jirbo/adcolony/ei;

    iget-object v3, v3, Lcom/jirbo/adcolony/ei;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v0, p0, Lcom/jirbo/adcolony/y;->w:Ljava/util/HashMap;

    const-string/jumbo v2, "card_dissolved"

    iget-object v3, p0, Lcom/jirbo/adcolony/y;->e:Lcom/jirbo/adcolony/dc;

    iget-object v3, v3, Lcom/jirbo/adcolony/dc;->t:Lcom/jirbo/adcolony/ei;

    iget-object v3, v3, Lcom/jirbo/adcolony/ei;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v0, p0, Lcom/jirbo/adcolony/y;->w:Ljava/util/HashMap;

    const-string/jumbo v2, "start"

    iget-object v3, p0, Lcom/jirbo/adcolony/y;->e:Lcom/jirbo/adcolony/dc;

    iget-object v3, v3, Lcom/jirbo/adcolony/dc;->t:Lcom/jirbo/adcolony/ei;

    iget-object v3, v3, Lcom/jirbo/adcolony/ei;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v0, p0, Lcom/jirbo/adcolony/y;->w:Ljava/util/HashMap;

    const-string/jumbo v2, "third_quartile"

    iget-object v3, p0, Lcom/jirbo/adcolony/y;->e:Lcom/jirbo/adcolony/dc;

    iget-object v3, v3, Lcom/jirbo/adcolony/dc;->t:Lcom/jirbo/adcolony/ei;

    iget-object v3, v3, Lcom/jirbo/adcolony/ei;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v0, p0, Lcom/jirbo/adcolony/y;->w:Ljava/util/HashMap;

    const-string/jumbo v2, "complete"

    iget-object v3, p0, Lcom/jirbo/adcolony/y;->e:Lcom/jirbo/adcolony/dc;

    iget-object v3, v3, Lcom/jirbo/adcolony/dc;->t:Lcom/jirbo/adcolony/ei;

    iget-object v3, v3, Lcom/jirbo/adcolony/ei;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v0, p0, Lcom/jirbo/adcolony/y;->w:Ljava/util/HashMap;

    const-string/jumbo v2, "continue"

    iget-object v3, p0, Lcom/jirbo/adcolony/y;->e:Lcom/jirbo/adcolony/dc;

    iget-object v3, v3, Lcom/jirbo/adcolony/dc;->t:Lcom/jirbo/adcolony/ei;

    iget-object v3, v3, Lcom/jirbo/adcolony/ei;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object v0, p0, Lcom/jirbo/adcolony/y;->w:Ljava/util/HashMap;

    const-string/jumbo v2, "in_video_engagement"

    iget-object v3, p0, Lcom/jirbo/adcolony/y;->e:Lcom/jirbo/adcolony/dc;

    iget-object v3, v3, Lcom/jirbo/adcolony/dc;->t:Lcom/jirbo/adcolony/ei;

    iget-object v3, v3, Lcom/jirbo/adcolony/ei;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v0, p0, Lcom/jirbo/adcolony/y;->w:Ljava/util/HashMap;

    const-string/jumbo v2, "reward_v4vc"

    iget-object v3, p0, Lcom/jirbo/adcolony/y;->e:Lcom/jirbo/adcolony/dc;

    iget-object v3, v3, Lcom/jirbo/adcolony/dc;->t:Lcom/jirbo/adcolony/ei;

    iget-object v3, v3, Lcom/jirbo/adcolony/ei;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v0, p0, Lcom/jirbo/adcolony/y;->w:Ljava/util/HashMap;

    const-string/jumbo v2, "v4iap"

    iget-object v3, p0, Lcom/jirbo/adcolony/y;->e:Lcom/jirbo/adcolony/dc;

    iget-object v3, v3, Lcom/jirbo/adcolony/dc;->t:Lcom/jirbo/adcolony/ei;

    iget-object v3, v3, Lcom/jirbo/adcolony/ei;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    iget-object v0, p0, Lcom/jirbo/adcolony/y;->w:Ljava/util/HashMap;

    const-string/jumbo v2, "first_quartile"

    iget-object v3, p0, Lcom/jirbo/adcolony/y;->e:Lcom/jirbo/adcolony/dc;

    iget-object v3, v3, Lcom/jirbo/adcolony/dc;->t:Lcom/jirbo/adcolony/ei;

    iget-object v3, v3, Lcom/jirbo/adcolony/ei;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    iget-object v0, p0, Lcom/jirbo/adcolony/y;->w:Ljava/util/HashMap;

    const-string/jumbo v2, "video_expanded"

    iget-object v3, p0, Lcom/jirbo/adcolony/y;->e:Lcom/jirbo/adcolony/dc;

    iget-object v3, v3, Lcom/jirbo/adcolony/dc;->t:Lcom/jirbo/adcolony/ei;

    iget-object v3, v3, Lcom/jirbo/adcolony/ei;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    iget-object v0, p0, Lcom/jirbo/adcolony/y;->w:Ljava/util/HashMap;

    const-string/jumbo v2, "sound_mute"

    iget-object v3, p0, Lcom/jirbo/adcolony/y;->e:Lcom/jirbo/adcolony/dc;

    iget-object v3, v3, Lcom/jirbo/adcolony/dc;->t:Lcom/jirbo/adcolony/ei;

    iget-object v3, v3, Lcom/jirbo/adcolony/ei;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-object v0, p0, Lcom/jirbo/adcolony/y;->w:Ljava/util/HashMap;

    const-string/jumbo v2, "sound_unmute"

    iget-object v3, p0, Lcom/jirbo/adcolony/y;->e:Lcom/jirbo/adcolony/dc;

    iget-object v3, v3, Lcom/jirbo/adcolony/dc;->t:Lcom/jirbo/adcolony/ei;

    iget-object v3, v3, Lcom/jirbo/adcolony/ei;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget-object v0, p0, Lcom/jirbo/adcolony/y;->w:Ljava/util/HashMap;

    const-string/jumbo v2, "video_paused"

    iget-object v3, p0, Lcom/jirbo/adcolony/y;->e:Lcom/jirbo/adcolony/dc;

    iget-object v3, v3, Lcom/jirbo/adcolony/dc;->t:Lcom/jirbo/adcolony/ei;

    iget-object v3, v3, Lcom/jirbo/adcolony/ei;->u:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    iget-object v0, p0, Lcom/jirbo/adcolony/y;->w:Ljava/util/HashMap;

    const-string/jumbo v2, "video_resumed"

    iget-object v3, p0, Lcom/jirbo/adcolony/y;->e:Lcom/jirbo/adcolony/dc;

    iget-object v3, v3, Lcom/jirbo/adcolony/dc;->t:Lcom/jirbo/adcolony/ei;

    iget-object v3, v3, Lcom/jirbo/adcolony/ei;->v:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object v0, p0, Lcom/jirbo/adcolony/y;->w:Ljava/util/HashMap;

    const-string/jumbo v2, "native_start"

    iget-object v3, p0, Lcom/jirbo/adcolony/y;->e:Lcom/jirbo/adcolony/dc;

    iget-object v3, v3, Lcom/jirbo/adcolony/dc;->t:Lcom/jirbo/adcolony/ei;

    iget-object v3, v3, Lcom/jirbo/adcolony/ei;->w:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iget-object v0, p0, Lcom/jirbo/adcolony/y;->w:Ljava/util/HashMap;

    const-string/jumbo v2, "native_first_quartile"

    iget-object v3, p0, Lcom/jirbo/adcolony/y;->e:Lcom/jirbo/adcolony/dc;

    iget-object v3, v3, Lcom/jirbo/adcolony/dc;->t:Lcom/jirbo/adcolony/ei;

    iget-object v3, v3, Lcom/jirbo/adcolony/ei;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object v0, p0, Lcom/jirbo/adcolony/y;->w:Ljava/util/HashMap;

    const-string/jumbo v2, "native_midpoint"

    iget-object v3, p0, Lcom/jirbo/adcolony/y;->e:Lcom/jirbo/adcolony/dc;

    iget-object v3, v3, Lcom/jirbo/adcolony/dc;->t:Lcom/jirbo/adcolony/ei;

    iget-object v3, v3, Lcom/jirbo/adcolony/ei;->y:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object v0, p0, Lcom/jirbo/adcolony/y;->w:Ljava/util/HashMap;

    const-string/jumbo v2, "native_third_quartile"

    iget-object v3, p0, Lcom/jirbo/adcolony/y;->e:Lcom/jirbo/adcolony/dc;

    iget-object v3, v3, Lcom/jirbo/adcolony/dc;->t:Lcom/jirbo/adcolony/ei;

    iget-object v3, v3, Lcom/jirbo/adcolony/ei;->z:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget-object v0, p0, Lcom/jirbo/adcolony/y;->w:Ljava/util/HashMap;

    const-string/jumbo v2, "native_complete"

    iget-object v3, p0, Lcom/jirbo/adcolony/y;->e:Lcom/jirbo/adcolony/dc;

    iget-object v3, v3, Lcom/jirbo/adcolony/dc;->t:Lcom/jirbo/adcolony/ei;

    iget-object v3, v3, Lcom/jirbo/adcolony/ei;->A:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object v0, p0, Lcom/jirbo/adcolony/y;->w:Ljava/util/HashMap;

    const-string/jumbo v2, "native_overlay_click"

    iget-object v3, p0, Lcom/jirbo/adcolony/y;->e:Lcom/jirbo/adcolony/dc;

    iget-object v3, v3, Lcom/jirbo/adcolony/dc;->t:Lcom/jirbo/adcolony/ei;

    iget-object v3, v3, Lcom/jirbo/adcolony/ei;->B:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    .line 168
    goto/16 :goto_0
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 59
    iget v0, p0, Lcom/jirbo/adcolony/y;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method abstract d()Z
.end method

.method abstract e()V
.end method

.method abstract f()Z
.end method

.method g()Z
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/y;->b(Z)Z

    move-result v0

    return v0
.end method
