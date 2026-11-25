.class Lcom/jirbo/adcolony/ca;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static c:Ljava/lang/String;


# instance fields
.field A:Ljava/lang/String;

.field B:Ljava/lang/String;

.field C:Ljava/lang/String;

.field D:Ljava/lang/String;

.field E:Ljava/lang/String;

.field F:Ljava/lang/String;

.field G:Ljava/lang/String;

.field H:Ljava/lang/String;

.field I:Ljava/lang/String;

.field J:Ljava/lang/String;

.field K:Ljava/lang/String;

.field L:Z

.field M:Z

.field a:Lcom/jirbo/adcolony/cb;

.field b:Ljava/lang/String;

.field d:I

.field e:I

.field f:Z

.field g:Z

.field h:Lcom/jirbo/adcolony/h;

.field i:Lcom/jirbo/adcolony/h;

.field j:Ljava/lang/String;

.field k:[Ljava/lang/String;

.field l:Lcom/jirbo/adcolony/dg;

.field m:Lcom/jirbo/adcolony/dc;

.field n:D

.field o:Ljava/lang/String;

.field p:Ljava/lang/String;

.field q:Ljava/lang/String;

.field r:Ljava/lang/String;

.field s:Z

.field t:Ljava/lang/String;

.field u:Ljava/lang/String;

.field v:Lcom/jirbo/adcolony/d;

.field w:Ljava/lang/String;

.field x:Ljava/lang/String;

.field y:Ljava/lang/String;

.field z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-string/jumbo v0, "https://androidads23.adcolony.com/configure"

    sput-object v0, Lcom/jirbo/adcolony/ca;->c:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/jirbo/adcolony/cb;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string/jumbo v0, "2.3.0"

    iput-object v0, p0, Lcom/jirbo/adcolony/ca;->b:Ljava/lang/String;

    .line 14
    const/16 v0, 0x12c

    iput v0, p0, Lcom/jirbo/adcolony/ca;->d:I

    .line 15
    iput v2, p0, Lcom/jirbo/adcolony/ca;->e:I

    .line 17
    iput-boolean v2, p0, Lcom/jirbo/adcolony/ca;->f:Z

    .line 18
    iput-boolean v2, p0, Lcom/jirbo/adcolony/ca;->g:Z

    .line 21
    new-instance v0, Lcom/jirbo/adcolony/h;

    invoke-direct {v0}, Lcom/jirbo/adcolony/h;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    .line 32
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/jirbo/adcolony/ca;->n:D

    .line 35
    const-string/jumbo v0, "android"

    iput-object v0, p0, Lcom/jirbo/adcolony/ca;->o:Ljava/lang/String;

    .line 36
    const-string/jumbo v0, "android_native"

    iput-object v0, p0, Lcom/jirbo/adcolony/ca;->p:Ljava/lang/String;

    .line 39
    const-string/jumbo v0, "1.0"

    iput-object v0, p0, Lcom/jirbo/adcolony/ca;->q:Ljava/lang/String;

    .line 40
    const-string/jumbo v0, "google"

    iput-object v0, p0, Lcom/jirbo/adcolony/ca;->r:Ljava/lang/String;

    .line 41
    iput-boolean v2, p0, Lcom/jirbo/adcolony/ca;->s:Z

    .line 49
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/jirbo/adcolony/ca;->x:Ljava/lang/String;

    .line 71
    iput-object p1, p0, Lcom/jirbo/adcolony/ca;->a:Lcom/jirbo/adcolony/cb;

    .line 72
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 255
    if-eqz p1, :cond_0

    .line 256
    :goto_0
    return-object p1

    :cond_0
    move-object p1, p2

    goto :goto_0
.end method

.method a()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 109
    :goto_0
    sget-boolean v0, Lcom/jirbo/adcolony/t;->b:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/jirbo/adcolony/ca;->e:I

    const/16 v3, 0x3c

    if-ge v0, v3, :cond_0

    .line 113
    :try_start_0
    iget v0, p0, Lcom/jirbo/adcolony/ca;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jirbo/adcolony/ca;->e:I

    .line 114
    const-wide/16 v4, 0x32

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    goto :goto_0

    .line 121
    :cond_0
    iput v2, p0, Lcom/jirbo/adcolony/ca;->e:I

    .line 122
    iget-object v0, p0, Lcom/jirbo/adcolony/ca;->a:Lcom/jirbo/adcolony/cb;

    iget-object v0, v0, Lcom/jirbo/adcolony/cb;->g:Lcom/jirbo/adcolony/bw;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/bw;->a()V

    .line 125
    sget-object v0, Lcom/jirbo/adcolony/ct;->a:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {p0, v0, v3}, Lcom/jirbo/adcolony/ca;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/ca;->K:Ljava/lang/String;

    .line 126
    sget-boolean v0, Lcom/jirbo/adcolony/ct;->b:Z

    iput-boolean v0, p0, Lcom/jirbo/adcolony/ca;->L:Z

    .line 127
    invoke-static {}, Lcom/jirbo/adcolony/ct;->a()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, ""

    invoke-virtual {p0, v0, v3}, Lcom/jirbo/adcolony/ca;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/ca;->t:Ljava/lang/String;

    .line 128
    iget-object v0, p0, Lcom/jirbo/adcolony/ca;->K:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string/jumbo v0, ""

    :goto_1
    iput-object v0, p0, Lcom/jirbo/adcolony/ca;->u:Ljava/lang/String;

    .line 129
    invoke-static {}, Lcom/jirbo/adcolony/ct;->b()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, ""

    invoke-virtual {p0, v0, v3}, Lcom/jirbo/adcolony/ca;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/ca;->w:Ljava/lang/String;

    .line 131
    iget-object v0, p0, Lcom/jirbo/adcolony/ca;->y:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 134
    invoke-static {}, Lcom/jirbo/adcolony/ct;->e()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, ""

    invoke-virtual {p0, v0, v3}, Lcom/jirbo/adcolony/ca;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/ca;->y:Ljava/lang/String;

    .line 137
    :cond_1
    invoke-static {}, Lcom/jirbo/adcolony/ct;->k()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, ""

    invoke-virtual {p0, v0, v3}, Lcom/jirbo/adcolony/ca;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/ca;->z:Ljava/lang/String;

    .line 138
    invoke-static {}, Lcom/jirbo/adcolony/ct;->l()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, ""

    invoke-virtual {p0, v0, v3}, Lcom/jirbo/adcolony/ca;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/ca;->A:Ljava/lang/String;

    .line 139
    invoke-static {}, Lcom/jirbo/adcolony/ct;->j()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "en"

    invoke-virtual {p0, v0, v3}, Lcom/jirbo/adcolony/ca;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/ca;->E:Ljava/lang/String;

    .line 140
    invoke-static {}, Lcom/jirbo/adcolony/ct;->m()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, ""

    invoke-virtual {p0, v0, v3}, Lcom/jirbo/adcolony/ca;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/ca;->F:Ljava/lang/String;

    .line 141
    invoke-static {}, Lcom/jirbo/adcolony/ct;->n()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, ""

    invoke-virtual {p0, v0, v3}, Lcom/jirbo/adcolony/ca;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/ca;->G:Ljava/lang/String;

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, ""

    invoke-virtual {p0, v0, v3}, Lcom/jirbo/adcolony/ca;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/ca;->J:Ljava/lang/String;

    .line 144
    invoke-static {}, Lcom/jirbo/adcolony/ct;->h()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, ""

    invoke-virtual {p0, v0, v3}, Lcom/jirbo/adcolony/ca;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/ca;->C:Ljava/lang/String;

    .line 145
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/jirbo/adcolony/ca;->D:Ljava/lang/String;

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/jirbo/adcolony/ct;->c()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, ""

    invoke-virtual {p0, v0, v3}, Lcom/jirbo/adcolony/ca;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/ca;->H:Ljava/lang/String;

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/jirbo/adcolony/ct;->d()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, ""

    invoke-virtual {p0, v0, v3}, Lcom/jirbo/adcolony/ca;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/ca;->I:Ljava/lang/String;

    .line 151
    invoke-static {}, Lcom/jirbo/adcolony/bd;->c()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/jirbo/adcolony/bd;->d()Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/jirbo/adcolony/ca;->M:Z

    .line 154
    iget-object v0, p0, Lcom/jirbo/adcolony/ca;->G:Ljava/lang/String;

    sput-object v0, Lcom/jirbo/adcolony/ba;->T:Ljava/lang/String;

    .line 155
    iget-object v0, p0, Lcom/jirbo/adcolony/ca;->b:Ljava/lang/String;

    sput-object v0, Lcom/jirbo/adcolony/ba;->U:Ljava/lang/String;

    .line 157
    sget-boolean v0, Lcom/jirbo/adcolony/ba;->d:Z

    if-eqz v0, :cond_c

    const-string/jumbo v0, "tablet"

    iput-object v0, p0, Lcom/jirbo/adcolony/ca;->B:Ljava/lang/String;

    .line 160
    :goto_3
    new-instance v0, Lcom/jirbo/adcolony/d;

    invoke-direct {v0}, Lcom/jirbo/adcolony/d;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/ca;->v:Lcom/jirbo/adcolony/d;

    .line 161
    const-string/jumbo v0, "com.android.vending"

    invoke-static {v0}, Lcom/jirbo/adcolony/bd;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "com.android.market"

    invoke-static {v0}, Lcom/jirbo/adcolony/bd;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 163
    :cond_2
    iget-object v0, p0, Lcom/jirbo/adcolony/ca;->v:Lcom/jirbo/adcolony/d;

    const-string/jumbo v2, "google"

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/d;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/d;

    .line 165
    :cond_3
    const-string/jumbo v0, "com.amazon.venezia"

    invoke-static {v0}, Lcom/jirbo/adcolony/bd;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 167
    iget-object v0, p0, Lcom/jirbo/adcolony/ca;->v:Lcom/jirbo/adcolony/d;

    const-string/jumbo v2, "amazon"

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/d;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/d;

    .line 170
    :cond_4
    sget-object v0, Lcom/jirbo/adcolony/cx;->b:Lcom/jirbo/adcolony/cx;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/cx;->f:Z

    if-eqz v0, :cond_5

    .line 172
    sget-object v0, Lcom/jirbo/adcolony/cx;->b:Lcom/jirbo/adcolony/cx;

    const-string/jumbo v2, "sdk_version:"

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/cx;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/cx;

    move-result-object v0

    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/cx;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/cx;

    .line 173
    sget-object v0, Lcom/jirbo/adcolony/cx;->b:Lcom/jirbo/adcolony/cx;

    const-string/jumbo v2, "ad_manifest_url:"

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/cx;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/cx;

    move-result-object v0

    sget-object v2, Lcom/jirbo/adcolony/ca;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/cx;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/cx;

    .line 175
    sget-object v0, Lcom/jirbo/adcolony/cx;->b:Lcom/jirbo/adcolony/cx;

    const-string/jumbo v2, "app_id:"

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/cx;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/cx;

    move-result-object v0

    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->j:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/cx;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/cx;

    .line 176
    sget-object v0, Lcom/jirbo/adcolony/cx;->b:Lcom/jirbo/adcolony/cx;

    const-string/jumbo v2, "zone_ids:"

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/cx;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/cx;

    move-result-object v0

    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->k:[Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/cx;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/cx;

    .line 178
    sget-object v0, Lcom/jirbo/adcolony/cx;->b:Lcom/jirbo/adcolony/cx;

    const-string/jumbo v2, "os_name:"

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/cx;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/cx;

    move-result-object v0

    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->o:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/cx;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/cx;

    .line 179
    sget-object v0, Lcom/jirbo/adcolony/cx;->b:Lcom/jirbo/adcolony/cx;

    const-string/jumbo v2, "sdk_type:"

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/cx;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/cx;

    move-result-object v0

    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->p:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/cx;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/cx;

    .line 181
    sget-object v0, Lcom/jirbo/adcolony/cx;->b:Lcom/jirbo/adcolony/cx;

    const-string/jumbo v2, "app_version:"

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/cx;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/cx;

    move-result-object v0

    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->q:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/cx;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/cx;

    .line 182
    sget-object v0, Lcom/jirbo/adcolony/cx;->b:Lcom/jirbo/adcolony/cx;

    const-string/jumbo v2, "origin_store:"

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/cx;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/cx;

    move-result-object v0

    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->r:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/cx;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/cx;

    .line 183
    sget-object v0, Lcom/jirbo/adcolony/cx;->b:Lcom/jirbo/adcolony/cx;

    const-string/jumbo v2, "skippable:"

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/cx;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/cx;

    move-result-object v0

    iget-boolean v2, p0, Lcom/jirbo/adcolony/ca;->s:Z

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/cx;->b(Z)Lcom/jirbo/adcolony/cx;

    .line 185
    sget-object v0, Lcom/jirbo/adcolony/cx;->b:Lcom/jirbo/adcolony/cx;

    const-string/jumbo v2, "android_id:"

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/cx;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/cx;

    move-result-object v0

    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->t:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/cx;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/cx;

    .line 186
    sget-object v0, Lcom/jirbo/adcolony/cx;->b:Lcom/jirbo/adcolony/cx;

    const-string/jumbo v2, "android_id_sha1:"

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/cx;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/cx;

    move-result-object v0

    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->u:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/cx;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/cx;

    .line 187
    sget-object v0, Lcom/jirbo/adcolony/cx;->b:Lcom/jirbo/adcolony/cx;

    const-string/jumbo v2, "available_stores:"

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/cx;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/cx;

    move-result-object v0

    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->v:Lcom/jirbo/adcolony/d;

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/cx;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/cx;

    .line 188
    sget-object v0, Lcom/jirbo/adcolony/cx;->b:Lcom/jirbo/adcolony/cx;

    const-string/jumbo v2, "carrier_name:"

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/cx;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/cx;

    move-result-object v0

    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->w:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/cx;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/cx;

    .line 189
    sget-object v0, Lcom/jirbo/adcolony/cx;->b:Lcom/jirbo/adcolony/cx;

    const-string/jumbo v2, "custom_id:"

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/cx;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/cx;

    move-result-object v0

    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->x:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/cx;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/cx;

    .line 190
    sget-object v0, Lcom/jirbo/adcolony/cx;->b:Lcom/jirbo/adcolony/cx;

    const-string/jumbo v2, "device_id:"

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/cx;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/cx;

    move-result-object v0

    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->y:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/cx;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/cx;

    .line 191
    sget-object v0, Lcom/jirbo/adcolony/cx;->b:Lcom/jirbo/adcolony/cx;

    const-string/jumbo v2, "device_manufacturer:"

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/cx;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/cx;

    move-result-object v0

    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->z:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/cx;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/cx;

    .line 192
    sget-object v0, Lcom/jirbo/adcolony/cx;->b:Lcom/jirbo/adcolony/cx;

    const-string/jumbo v2, "device_model:"

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/cx;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/cx;

    move-result-object v0

    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->A:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/cx;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/cx;

    .line 193
    sget-object v0, Lcom/jirbo/adcolony/cx;->b:Lcom/jirbo/adcolony/cx;

    const-string/jumbo v2, "device_type:"

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/cx;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/cx;

    move-result-object v0

    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->B:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/cx;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/cx;

    .line 194
    sget-object v0, Lcom/jirbo/adcolony/cx;->b:Lcom/jirbo/adcolony/cx;

    const-string/jumbo v2, "imei:"

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/cx;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/cx;

    move-result-object v0

    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->C:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/cx;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/cx;

    .line 195
    sget-object v0, Lcom/jirbo/adcolony/cx;->b:Lcom/jirbo/adcolony/cx;

    const-string/jumbo v2, "imei_sha1:"

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/cx;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/cx;

    move-result-object v0

    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->D:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/cx;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/cx;

    .line 196
    sget-object v0, Lcom/jirbo/adcolony/cx;->b:Lcom/jirbo/adcolony/cx;

    const-string/jumbo v2, "language:"

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/cx;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/cx;

    move-result-object v0

    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->E:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/cx;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/cx;

    .line 197
    sget-object v0, Lcom/jirbo/adcolony/cx;->b:Lcom/jirbo/adcolony/cx;

    const-string/jumbo v2, "open_udid:"

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/cx;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/cx;

    move-result-object v0

    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->F:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/cx;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/cx;

    .line 198
    sget-object v0, Lcom/jirbo/adcolony/cx;->b:Lcom/jirbo/adcolony/cx;

    const-string/jumbo v2, "os_version:"

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/cx;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/cx;

    move-result-object v0

    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->G:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/cx;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/cx;

    .line 201
    :cond_5
    new-instance v0, Lcom/jirbo/adcolony/h;

    invoke-direct {v0}, Lcom/jirbo/adcolony/h;-><init>()V

    .line 203
    const-string/jumbo v2, "os_name"

    iget-object v3, p0, Lcom/jirbo/adcolony/ca;->o:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const-string/jumbo v2, "os_version"

    iget-object v3, p0, Lcom/jirbo/adcolony/ca;->G:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string/jumbo v2, "device_api"

    iget-object v3, p0, Lcom/jirbo/adcolony/ca;->J:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string/jumbo v2, "app_version"

    iget-object v3, p0, Lcom/jirbo/adcolony/ca;->q:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string/jumbo v2, "android_id_sha1"

    iget-object v3, p0, Lcom/jirbo/adcolony/ca;->u:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string/jumbo v2, "device_id"

    iget-object v3, p0, Lcom/jirbo/adcolony/ca;->y:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const-string/jumbo v2, "open_udid"

    iget-object v3, p0, Lcom/jirbo/adcolony/ca;->F:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const-string/jumbo v2, "device_type"

    iget-object v3, p0, Lcom/jirbo/adcolony/ca;->B:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const-string/jumbo v2, "ln"

    iget-object v3, p0, Lcom/jirbo/adcolony/ca;->E:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string/jumbo v2, "device_brand"

    iget-object v3, p0, Lcom/jirbo/adcolony/ca;->z:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string/jumbo v2, "device_model"

    iget-object v3, p0, Lcom/jirbo/adcolony/ca;->A:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string/jumbo v2, "screen_width"

    invoke-static {}, Lcom/jirbo/adcolony/ct;->f()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;I)V

    .line 215
    const-string/jumbo v2, "screen_height"

    invoke-static {}, Lcom/jirbo/adcolony/ct;->g()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;I)V

    .line 216
    const-string/jumbo v2, "sdk_type"

    iget-object v3, p0, Lcom/jirbo/adcolony/ca;->p:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const-string/jumbo v2, "sdk_version"

    iget-object v3, p0, Lcom/jirbo/adcolony/ca;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const-string/jumbo v2, "origin_store"

    iget-object v3, p0, Lcom/jirbo/adcolony/ca;->r:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string/jumbo v2, "available_stores"

    iget-object v3, p0, Lcom/jirbo/adcolony/ca;->v:Lcom/jirbo/adcolony/d;

    invoke-virtual {v0, v2, v3}, Lcom/jirbo/adcolony/h;->a(Ljava/lang/String;Lcom/jirbo/adcolony/j;)V

    .line 220
    const-string/jumbo v2, "imei_sha1"

    iget-object v3, p0, Lcom/jirbo/adcolony/ca;->D:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string/jumbo v2, "memory_class"

    iget-object v3, p0, Lcom/jirbo/adcolony/ca;->H:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const-string/jumbo v2, "memory_used_mb"

    iget-object v3, p0, Lcom/jirbo/adcolony/ca;->I:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const-string/jumbo v2, "advertiser_id"

    iget-object v3, p0, Lcom/jirbo/adcolony/ca;->K:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-string/jumbo v2, "limit_tracking"

    iget-boolean v3, p0, Lcom/jirbo/adcolony/ca;->L:Z

    invoke-virtual {v0, v2, v3}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Z)V

    .line 225
    const-string/jumbo v2, "immersion"

    iget-boolean v3, p0, Lcom/jirbo/adcolony/ca;->M:Z

    invoke-virtual {v0, v2, v3}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Z)V

    .line 227
    iput-object v0, p0, Lcom/jirbo/adcolony/ca;->i:Lcom/jirbo/adcolony/h;

    .line 231
    iget-object v0, p0, Lcom/jirbo/adcolony/ca;->a:Lcom/jirbo/adcolony/cb;

    iget-object v0, v0, Lcom/jirbo/adcolony/cb;->f:Lcom/jirbo/adcolony/n;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/n;->a()V

    .line 232
    iget-object v0, p0, Lcom/jirbo/adcolony/ca;->a:Lcom/jirbo/adcolony/cb;

    iget-object v0, v0, Lcom/jirbo/adcolony/cb;->c:Lcom/jirbo/adcolony/ej;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ej;->a()V

    .line 233
    iget-object v0, p0, Lcom/jirbo/adcolony/ca;->a:Lcom/jirbo/adcolony/cb;

    iget-object v0, v0, Lcom/jirbo/adcolony/cb;->d:Lcom/jirbo/adcolony/ep;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ep;->a()V

    .line 234
    iget-object v0, p0, Lcom/jirbo/adcolony/ca;->a:Lcom/jirbo/adcolony/cb;

    iget-object v0, v0, Lcom/jirbo/adcolony/cb;->b:Lcom/jirbo/adcolony/bz;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/bz;->a()V

    .line 235
    iget-object v0, p0, Lcom/jirbo/adcolony/ca;->a:Lcom/jirbo/adcolony/cb;

    iget-object v0, v0, Lcom/jirbo/adcolony/cb;->e:Lcom/jirbo/adcolony/er;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/er;->a()V

    .line 237
    iput-boolean v1, p0, Lcom/jirbo/adcolony/ca;->g:Z

    .line 240
    sget-object v0, Lcom/jirbo/adcolony/ba;->c:Lcom/jirbo/adcolony/cb;

    iget-object v0, v0, Lcom/jirbo/adcolony/cb;->b:Lcom/jirbo/adcolony/bz;

    iget-object v0, v0, Lcom/jirbo/adcolony/bz;->i:Lcom/jirbo/adcolony/dn;

    new-instance v1, Lcom/jirbo/adcolony/dj;

    invoke-direct {v1}, Lcom/jirbo/adcolony/dj;-><init>()V

    iput-object v1, v0, Lcom/jirbo/adcolony/dn;->n:Lcom/jirbo/adcolony/dj;

    .line 242
    iget-object v0, p0, Lcom/jirbo/adcolony/ca;->a:Lcom/jirbo/adcolony/cb;

    iget-object v0, v0, Lcom/jirbo/adcolony/cb;->b:Lcom/jirbo/adcolony/bz;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/bz;->f()V

    .line 243
    iget-object v0, p0, Lcom/jirbo/adcolony/ca;->a:Lcom/jirbo/adcolony/cb;

    iget-object v0, v0, Lcom/jirbo/adcolony/cb;->b:Lcom/jirbo/adcolony/bz;

    iget-object v0, v0, Lcom/jirbo/adcolony/bz;->i:Lcom/jirbo/adcolony/dn;

    iget-object v0, v0, Lcom/jirbo/adcolony/dn;->i:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/jirbo/adcolony/ca;->a:Lcom/jirbo/adcolony/cb;

    iget-object v0, v0, Lcom/jirbo/adcolony/cb;->b:Lcom/jirbo/adcolony/bz;

    iget-object v0, v0, Lcom/jirbo/adcolony/bz;->i:Lcom/jirbo/adcolony/dn;

    iget-object v0, v0, Lcom/jirbo/adcolony/dn;->i:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 245
    :cond_6
    iget-object v0, p0, Lcom/jirbo/adcolony/ca;->a:Lcom/jirbo/adcolony/cb;

    iget-object v0, v0, Lcom/jirbo/adcolony/cb;->b:Lcom/jirbo/adcolony/bz;

    iget-object v0, v0, Lcom/jirbo/adcolony/bz;->i:Lcom/jirbo/adcolony/dn;

    const-string/jumbo v1, "all"

    iput-object v1, v0, Lcom/jirbo/adcolony/dn;->i:Ljava/lang/String;

    .line 247
    :cond_7
    iget-object v0, p0, Lcom/jirbo/adcolony/ca;->a:Lcom/jirbo/adcolony/cb;

    iget-object v0, v0, Lcom/jirbo/adcolony/cb;->b:Lcom/jirbo/adcolony/bz;

    iget-object v0, v0, Lcom/jirbo/adcolony/bz;->i:Lcom/jirbo/adcolony/dn;

    iget-object v0, v0, Lcom/jirbo/adcolony/dn;->j:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/jirbo/adcolony/ca;->a:Lcom/jirbo/adcolony/cb;

    iget-object v0, v0, Lcom/jirbo/adcolony/cb;->b:Lcom/jirbo/adcolony/bz;

    iget-object v0, v0, Lcom/jirbo/adcolony/bz;->i:Lcom/jirbo/adcolony/dn;

    iget-object v0, v0, Lcom/jirbo/adcolony/dn;->j:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 249
    :cond_8
    iget-object v0, p0, Lcom/jirbo/adcolony/ca;->a:Lcom/jirbo/adcolony/cb;

    iget-object v0, v0, Lcom/jirbo/adcolony/cb;->b:Lcom/jirbo/adcolony/bz;

    iget-object v0, v0, Lcom/jirbo/adcolony/bz;->i:Lcom/jirbo/adcolony/dn;

    const-string/jumbo v1, "all"

    iput-object v1, v0, Lcom/jirbo/adcolony/dn;->j:Ljava/lang/String;

    .line 251
    :cond_9
    return-void

    .line 128
    :cond_a
    iget-object v0, p0, Lcom/jirbo/adcolony/ca;->t:Ljava/lang/String;

    invoke-static {v0}, Lcom/jirbo/adcolony/bd;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, ""

    invoke-virtual {p0, v0, v3}, Lcom/jirbo/adcolony/ca;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_b
    move v0, v2

    .line 151
    goto/16 :goto_2

    .line 158
    :cond_c
    const-string/jumbo v0, "phone"

    iput-object v0, p0, Lcom/jirbo/adcolony/ca;->B:Ljava/lang/String;

    goto/16 :goto_3
.end method

.method a(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 78
    if-nez p1, :cond_0

    const-string/jumbo p1, ""

    .line 79
    :cond_0
    const-string/jumbo v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_7

    aget-object v4, v2, v0

    .line 81
    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 82
    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_6

    .line 84
    aget-object v5, v4, v1

    .line 85
    const/4 v6, 0x1

    aget-object v4, v4, v6

    .line 86
    const-string/jumbo v6, "version"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iput-object v4, p0, Lcom/jirbo/adcolony/ca;->q:Ljava/lang/String;

    .line 79
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    :cond_2
    const-string/jumbo v6, "store"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 89
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "google"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "amazon"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 91
    :cond_3
    iput-object v4, p0, Lcom/jirbo/adcolony/ca;->r:Ljava/lang/String;

    goto :goto_1

    .line 95
    :cond_4
    new-instance v0, Lcom/jirbo/adcolony/ag;

    const-string/jumbo v1, "Origin store in client options must be set to either \'google\' or \'amazon\'"

    invoke-direct {v0, v1}, Lcom/jirbo/adcolony/ag;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_5
    const-string/jumbo v4, "skippable"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iput-boolean v1, p0, Lcom/jirbo/adcolony/ca;->s:Z

    goto :goto_1

    .line 102
    :cond_6
    aget-object v4, v4, v1

    const-string/jumbo v5, "skippable"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iput-boolean v1, p0, Lcom/jirbo/adcolony/ca;->s:Z

    goto :goto_1

    .line 105
    :cond_7
    return-void
.end method

.method a(Ljava/lang/String;Lcom/jirbo/adcolony/dc;)V
    .locals 6

    .prologue
    .line 265
    iget-object v0, p0, Lcom/jirbo/adcolony/ca;->a:Lcom/jirbo/adcolony/cb;

    iget-object v0, v0, Lcom/jirbo/adcolony/cb;->b:Lcom/jirbo/adcolony/bz;

    iget-object v0, v0, Lcom/jirbo/adcolony/bz;->i:Lcom/jirbo/adcolony/dn;

    iget-object v0, v0, Lcom/jirbo/adcolony/dn;->n:Lcom/jirbo/adcolony/dj;

    invoke-virtual {v0, p1}, Lcom/jirbo/adcolony/dj;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/dg;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/ca;->l:Lcom/jirbo/adcolony/dg;

    .line 266
    iget-object v0, p0, Lcom/jirbo/adcolony/ca;->l:Lcom/jirbo/adcolony/dg;

    if-nez v0, :cond_1

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    if-nez p2, :cond_2

    iget-object v0, p0, Lcom/jirbo/adcolony/ca;->l:Lcom/jirbo/adcolony/dg;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/dg;->i()Lcom/jirbo/adcolony/dc;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/ca;->m:Lcom/jirbo/adcolony/dc;

    .line 269
    :goto_1
    iget-object v0, p0, Lcom/jirbo/adcolony/ca;->m:Lcom/jirbo/adcolony/dc;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/jirbo/adcolony/ca;->a:Lcom/jirbo/adcolony/cb;

    iget-object v0, v0, Lcom/jirbo/adcolony/cb;->c:Lcom/jirbo/adcolony/ej;

    .line 274
    iget-object v1, p0, Lcom/jirbo/adcolony/ca;->m:Lcom/jirbo/adcolony/dc;

    iget-object v1, v1, Lcom/jirbo/adcolony/dc;->y:Lcom/jirbo/adcolony/df;

    .line 276
    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v3, "video_enabled"

    iget-boolean v4, v1, Lcom/jirbo/adcolony/df;->a:Z

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Z)V

    .line 277
    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v3, "video_filepath"

    invoke-virtual {v1}, Lcom/jirbo/adcolony/df;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v3, "video_width"

    iget v4, v1, Lcom/jirbo/adcolony/df;->b:I

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;I)V

    .line 279
    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v3, "video_height"

    iget v4, v1, Lcom/jirbo/adcolony/df;->c:I

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;I)V

    .line 280
    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v3, "video_duration"

    iget-wide v4, v1, Lcom/jirbo/adcolony/df;->k:D

    invoke-virtual {v2, v3, v4, v5}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;D)V

    .line 283
    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v3, "engagement_delay"

    iget-object v4, v1, Lcom/jirbo/adcolony/df;->m:Lcom/jirbo/adcolony/dp;

    iget v4, v4, Lcom/jirbo/adcolony/dp;->e:I

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;I)V

    .line 284
    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v3, "skip_delay"

    iget-object v4, v1, Lcom/jirbo/adcolony/df;->l:Lcom/jirbo/adcolony/dp;

    iget v4, v4, Lcom/jirbo/adcolony/dp;->e:I

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;I)V

    .line 287
    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v3, "browser_close_image_normal"

    iget-object v4, p0, Lcom/jirbo/adcolony/ca;->m:Lcom/jirbo/adcolony/dc;

    iget-object v4, v4, Lcom/jirbo/adcolony/dc;->u:Lcom/jirbo/adcolony/dv;

    iget-object v4, v4, Lcom/jirbo/adcolony/dv;->k:Lcom/jirbo/adcolony/dp;

    iget-object v4, v4, Lcom/jirbo/adcolony/dp;->f:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/ej;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v3, "browser_close_image_down"

    iget-object v4, p0, Lcom/jirbo/adcolony/ca;->m:Lcom/jirbo/adcolony/dc;

    iget-object v4, v4, Lcom/jirbo/adcolony/dc;->u:Lcom/jirbo/adcolony/dv;

    iget-object v4, v4, Lcom/jirbo/adcolony/dv;->k:Lcom/jirbo/adcolony/dp;

    iget-object v4, v4, Lcom/jirbo/adcolony/dp;->h:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/ej;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v3, "browser_reload_image_normal"

    iget-object v4, p0, Lcom/jirbo/adcolony/ca;->m:Lcom/jirbo/adcolony/dc;

    iget-object v4, v4, Lcom/jirbo/adcolony/dc;->u:Lcom/jirbo/adcolony/dv;

    iget-object v4, v4, Lcom/jirbo/adcolony/dv;->m:Lcom/jirbo/adcolony/dp;

    iget-object v4, v4, Lcom/jirbo/adcolony/dp;->f:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/ej;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v3, "browser_reload_image_down"

    iget-object v4, p0, Lcom/jirbo/adcolony/ca;->m:Lcom/jirbo/adcolony/dc;

    iget-object v4, v4, Lcom/jirbo/adcolony/dc;->u:Lcom/jirbo/adcolony/dv;

    iget-object v4, v4, Lcom/jirbo/adcolony/dv;->m:Lcom/jirbo/adcolony/dp;

    iget-object v4, v4, Lcom/jirbo/adcolony/dp;->h:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/ej;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v3, "browser_back_image_normal"

    iget-object v4, p0, Lcom/jirbo/adcolony/ca;->m:Lcom/jirbo/adcolony/dc;

    iget-object v4, v4, Lcom/jirbo/adcolony/dc;->u:Lcom/jirbo/adcolony/dv;

    iget-object v4, v4, Lcom/jirbo/adcolony/dv;->j:Lcom/jirbo/adcolony/dp;

    iget-object v4, v4, Lcom/jirbo/adcolony/dp;->f:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/ej;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v3, "browser_back_image_down"

    iget-object v4, p0, Lcom/jirbo/adcolony/ca;->m:Lcom/jirbo/adcolony/dc;

    iget-object v4, v4, Lcom/jirbo/adcolony/dc;->u:Lcom/jirbo/adcolony/dv;

    iget-object v4, v4, Lcom/jirbo/adcolony/dv;->j:Lcom/jirbo/adcolony/dp;

    iget-object v4, v4, Lcom/jirbo/adcolony/dp;->h:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/ej;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v3, "browser_forward_image_normal"

    iget-object v4, p0, Lcom/jirbo/adcolony/ca;->m:Lcom/jirbo/adcolony/dc;

    iget-object v4, v4, Lcom/jirbo/adcolony/dc;->u:Lcom/jirbo/adcolony/dv;

    iget-object v4, v4, Lcom/jirbo/adcolony/dv;->l:Lcom/jirbo/adcolony/dp;

    iget-object v4, v4, Lcom/jirbo/adcolony/dp;->f:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/ej;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v3, "browser_forward_image_down"

    iget-object v4, p0, Lcom/jirbo/adcolony/ca;->m:Lcom/jirbo/adcolony/dc;

    iget-object v4, v4, Lcom/jirbo/adcolony/dc;->u:Lcom/jirbo/adcolony/dv;

    iget-object v4, v4, Lcom/jirbo/adcolony/dv;->l:Lcom/jirbo/adcolony/dp;

    iget-object v4, v4, Lcom/jirbo/adcolony/dp;->h:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/ej;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v3, "browser_stop_image_normal"

    iget-object v4, p0, Lcom/jirbo/adcolony/ca;->m:Lcom/jirbo/adcolony/dc;

    iget-object v4, v4, Lcom/jirbo/adcolony/dc;->u:Lcom/jirbo/adcolony/dv;

    iget-object v4, v4, Lcom/jirbo/adcolony/dv;->i:Lcom/jirbo/adcolony/dp;

    iget-object v4, v4, Lcom/jirbo/adcolony/dp;->f:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/ej;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v3, "browser_stop_image_down"

    iget-object v4, p0, Lcom/jirbo/adcolony/ca;->m:Lcom/jirbo/adcolony/dc;

    iget-object v4, v4, Lcom/jirbo/adcolony/dc;->u:Lcom/jirbo/adcolony/dv;

    iget-object v4, v4, Lcom/jirbo/adcolony/dv;->i:Lcom/jirbo/adcolony/dp;

    iget-object v4, v4, Lcom/jirbo/adcolony/dp;->h:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/ej;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v3, "browser_glow_button"

    iget-object v4, p0, Lcom/jirbo/adcolony/ca;->m:Lcom/jirbo/adcolony/dc;

    iget-object v4, v4, Lcom/jirbo/adcolony/dc;->u:Lcom/jirbo/adcolony/dv;

    iget-object v4, v4, Lcom/jirbo/adcolony/dv;->a:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/ej;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v3, "browser_icon"

    iget-object v4, p0, Lcom/jirbo/adcolony/ca;->m:Lcom/jirbo/adcolony/dc;

    iget-object v4, v4, Lcom/jirbo/adcolony/dc;->u:Lcom/jirbo/adcolony/dv;

    iget-object v4, v4, Lcom/jirbo/adcolony/dv;->h:Lcom/jirbo/adcolony/du;

    iget-object v4, v4, Lcom/jirbo/adcolony/du;->d:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/ej;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v3, "mute"

    iget-object v4, p0, Lcom/jirbo/adcolony/ca;->m:Lcom/jirbo/adcolony/dc;

    iget-object v4, v4, Lcom/jirbo/adcolony/dc;->z:Lcom/jirbo/adcolony/dy;

    iget-object v4, v4, Lcom/jirbo/adcolony/dy;->j:Lcom/jirbo/adcolony/du;

    iget-object v4, v4, Lcom/jirbo/adcolony/du;->d:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/ej;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v3, "unmute"

    iget-object v4, p0, Lcom/jirbo/adcolony/ca;->m:Lcom/jirbo/adcolony/dc;

    iget-object v4, v4, Lcom/jirbo/adcolony/dc;->z:Lcom/jirbo/adcolony/dy;

    iget-object v4, v4, Lcom/jirbo/adcolony/dy;->k:Lcom/jirbo/adcolony/du;

    iget-object v4, v4, Lcom/jirbo/adcolony/du;->d:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/ej;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v3, "poster_image"

    iget-object v4, p0, Lcom/jirbo/adcolony/ca;->m:Lcom/jirbo/adcolony/dc;

    iget-object v4, v4, Lcom/jirbo/adcolony/dc;->z:Lcom/jirbo/adcolony/dy;

    iget-object v4, v4, Lcom/jirbo/adcolony/dy;->g:Lcom/jirbo/adcolony/ea;

    iget-object v4, v4, Lcom/jirbo/adcolony/ea;->a:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/ej;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v3, "thumb_image"

    iget-object v4, p0, Lcom/jirbo/adcolony/ca;->m:Lcom/jirbo/adcolony/dc;

    iget-object v4, v4, Lcom/jirbo/adcolony/dc;->z:Lcom/jirbo/adcolony/dy;

    iget-object v4, v4, Lcom/jirbo/adcolony/dy;->f:Lcom/jirbo/adcolony/eb;

    iget-object v4, v4, Lcom/jirbo/adcolony/eb;->a:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/ej;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v3, "advertiser_name"

    iget-object v4, p0, Lcom/jirbo/adcolony/ca;->m:Lcom/jirbo/adcolony/dc;

    iget-object v4, v4, Lcom/jirbo/adcolony/dc;->z:Lcom/jirbo/adcolony/dy;

    iget-object v4, v4, Lcom/jirbo/adcolony/dy;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v3, "description"

    iget-object v4, p0, Lcom/jirbo/adcolony/ca;->m:Lcom/jirbo/adcolony/dc;

    iget-object v4, v4, Lcom/jirbo/adcolony/dc;->z:Lcom/jirbo/adcolony/dy;

    iget-object v4, v4, Lcom/jirbo/adcolony/dy;->d:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v3, "title"

    iget-object v4, p0, Lcom/jirbo/adcolony/ca;->m:Lcom/jirbo/adcolony/dc;

    iget-object v4, v4, Lcom/jirbo/adcolony/dc;->z:Lcom/jirbo/adcolony/dy;

    iget-object v4, v4, Lcom/jirbo/adcolony/dy;->e:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v3, "click_to_install"

    iget-object v4, p0, Lcom/jirbo/adcolony/ca;->m:Lcom/jirbo/adcolony/dc;

    iget-object v4, v4, Lcom/jirbo/adcolony/dc;->z:Lcom/jirbo/adcolony/dy;

    iget-object v4, v4, Lcom/jirbo/adcolony/dy;->g:Lcom/jirbo/adcolony/ea;

    iget-object v4, v4, Lcom/jirbo/adcolony/ea;->c:Ljava/lang/String;

    const-string/jumbo v5, "install"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Z)V

    .line 307
    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v3, "store_url"

    iget-object v4, p0, Lcom/jirbo/adcolony/ca;->m:Lcom/jirbo/adcolony/dc;

    iget-object v4, v4, Lcom/jirbo/adcolony/dc;->z:Lcom/jirbo/adcolony/dy;

    iget-object v4, v4, Lcom/jirbo/adcolony/dy;->g:Lcom/jirbo/adcolony/ea;

    iget-object v4, v4, Lcom/jirbo/adcolony/ea;->d:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v3, "native_engagement_enabled"

    iget-object v4, p0, Lcom/jirbo/adcolony/ca;->m:Lcom/jirbo/adcolony/dc;

    iget-object v4, v4, Lcom/jirbo/adcolony/dc;->z:Lcom/jirbo/adcolony/dy;

    iget-object v4, v4, Lcom/jirbo/adcolony/dy;->h:Lcom/jirbo/adcolony/dz;

    iget-boolean v4, v4, Lcom/jirbo/adcolony/dz;->a:Z

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Z)V

    .line 310
    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v3, "native_engagement_type"

    iget-object v4, p0, Lcom/jirbo/adcolony/ca;->m:Lcom/jirbo/adcolony/dc;

    iget-object v4, v4, Lcom/jirbo/adcolony/dc;->z:Lcom/jirbo/adcolony/dy;

    iget-object v4, v4, Lcom/jirbo/adcolony/dy;->h:Lcom/jirbo/adcolony/dz;

    iget-object v4, v4, Lcom/jirbo/adcolony/dz;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v3, "native_engagement_command"

    iget-object v4, p0, Lcom/jirbo/adcolony/ca;->m:Lcom/jirbo/adcolony/dc;

    iget-object v4, v4, Lcom/jirbo/adcolony/dc;->z:Lcom/jirbo/adcolony/dy;

    iget-object v4, v4, Lcom/jirbo/adcolony/dy;->h:Lcom/jirbo/adcolony/dz;

    iget-object v4, v4, Lcom/jirbo/adcolony/dz;->e:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v3, "native_engagement_label"

    iget-object v4, p0, Lcom/jirbo/adcolony/ca;->m:Lcom/jirbo/adcolony/dc;

    iget-object v4, v4, Lcom/jirbo/adcolony/dc;->z:Lcom/jirbo/adcolony/dy;

    iget-object v4, v4, Lcom/jirbo/adcolony/dy;->h:Lcom/jirbo/adcolony/dz;

    iget-object v4, v4, Lcom/jirbo/adcolony/dz;->d:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v3, "skip_video_image_normal"

    iget-object v4, v1, Lcom/jirbo/adcolony/df;->l:Lcom/jirbo/adcolony/dp;

    iget-object v4, v4, Lcom/jirbo/adcolony/dp;->f:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/ej;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v3, "skip_video_image_down"

    iget-object v4, v1, Lcom/jirbo/adcolony/df;->l:Lcom/jirbo/adcolony/dp;

    iget-object v4, v4, Lcom/jirbo/adcolony/dp;->h:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/ej;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v3, "engagement_image_normal"

    iget-object v4, v1, Lcom/jirbo/adcolony/df;->m:Lcom/jirbo/adcolony/dp;

    iget-object v4, v4, Lcom/jirbo/adcolony/dp;->f:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/ej;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v3, "engagement_image_down"

    iget-object v4, v1, Lcom/jirbo/adcolony/df;->m:Lcom/jirbo/adcolony/dp;

    iget-object v4, v4, Lcom/jirbo/adcolony/dp;->h:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/ej;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v3, "engagement_height"

    iget-object v4, v1, Lcom/jirbo/adcolony/df;->m:Lcom/jirbo/adcolony/dp;

    iget v4, v4, Lcom/jirbo/adcolony/dp;->c:I

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;I)V

    .line 320
    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v3, "image_overlay_enabled"

    iget-object v4, v1, Lcom/jirbo/adcolony/df;->n:Lcom/jirbo/adcolony/dp;

    iget-boolean v4, v4, Lcom/jirbo/adcolony/dp;->a:Z

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Z)V

    .line 321
    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v3, "image_overlay_filepath"

    iget-object v4, v1, Lcom/jirbo/adcolony/df;->n:Lcom/jirbo/adcolony/dp;

    iget-object v4, v4, Lcom/jirbo/adcolony/dp;->f:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/ej;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v3, "haptics_enabled"

    iget-object v4, v1, Lcom/jirbo/adcolony/df;->o:Lcom/jirbo/adcolony/dt;

    iget-boolean v4, v4, Lcom/jirbo/adcolony/dt;->a:Z

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Z)V

    .line 324
    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v3, "haptics_filepath"

    iget-object v1, v1, Lcom/jirbo/adcolony/df;->o:Lcom/jirbo/adcolony/dt;

    iget-object v1, v1, Lcom/jirbo/adcolony/dt;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ej;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v1, "v4iap_enabled"

    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->m:Lcom/jirbo/adcolony/dc;

    iget-object v2, v2, Lcom/jirbo/adcolony/dc;->A:Lcom/jirbo/adcolony/dd;

    iget-boolean v2, v2, Lcom/jirbo/adcolony/dd;->c:Z

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Z)V

    .line 327
    iget-object v0, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v1, "product_id"

    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->m:Lcom/jirbo/adcolony/dc;

    iget-object v2, v2, Lcom/jirbo/adcolony/dc;->A:Lcom/jirbo/adcolony/dd;

    iget-object v2, v2, Lcom/jirbo/adcolony/dd;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v1, "in_progress"

    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->m:Lcom/jirbo/adcolony/dc;

    iget-object v2, v2, Lcom/jirbo/adcolony/dc;->A:Lcom/jirbo/adcolony/dd;

    iget-object v2, v2, Lcom/jirbo/adcolony/dd;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ca;->b()V

    goto/16 :goto_0

    .line 268
    :cond_2
    iput-object p2, p0, Lcom/jirbo/adcolony/ca;->m:Lcom/jirbo/adcolony/dc;

    goto/16 :goto_1
.end method

.method b()V
    .locals 5

    .prologue
    .line 406
    iget-object v0, p0, Lcom/jirbo/adcolony/ca;->m:Lcom/jirbo/adcolony/dc;

    iget-object v0, v0, Lcom/jirbo/adcolony/dc;->x:Lcom/jirbo/adcolony/dq;

    iget-object v0, v0, Lcom/jirbo/adcolony/dq;->h:Lcom/jirbo/adcolony/eg;

    .line 407
    iget-object v1, p0, Lcom/jirbo/adcolony/ca;->m:Lcom/jirbo/adcolony/dc;

    iget-object v1, v1, Lcom/jirbo/adcolony/dc;->x:Lcom/jirbo/adcolony/dq;

    iget-object v1, v1, Lcom/jirbo/adcolony/dq;->i:Lcom/jirbo/adcolony/ds;

    .line 409
    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->a:Lcom/jirbo/adcolony/cb;

    iget-object v2, v2, Lcom/jirbo/adcolony/cb;->c:Lcom/jirbo/adcolony/ej;

    .line 410
    iget-object v3, p0, Lcom/jirbo/adcolony/ca;->m:Lcom/jirbo/adcolony/dc;

    iget-object v3, v3, Lcom/jirbo/adcolony/dc;->x:Lcom/jirbo/adcolony/dq;

    iget-boolean v3, v3, Lcom/jirbo/adcolony/dq;->d:Z

    if-nez v3, :cond_0

    .line 412
    iget-object v0, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v1, "end_card_enabled"

    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->m:Lcom/jirbo/adcolony/dc;

    iget-object v2, v2, Lcom/jirbo/adcolony/dc;->x:Lcom/jirbo/adcolony/dq;

    iget-boolean v2, v2, Lcom/jirbo/adcolony/dq;->d:Z

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Z)V

    .line 455
    :goto_0
    return-void

    .line 415
    :cond_0
    invoke-virtual {v1}, Lcom/jirbo/adcolony/ds;->a()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 417
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jirbo/adcolony/ba;->M:Z

    .line 418
    iget-object v0, v1, Lcom/jirbo/adcolony/ds;->g:Ljava/lang/String;

    sput-object v0, Lcom/jirbo/adcolony/ba;->R:Ljava/lang/String;

    .line 419
    iget-object v0, v1, Lcom/jirbo/adcolony/ds;->f:Lcom/jirbo/adcolony/dx;

    iget-object v0, v0, Lcom/jirbo/adcolony/dx;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/jirbo/adcolony/ej;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jirbo/adcolony/ba;->S:Ljava/lang/String;

    .line 422
    iget-object v0, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v3, "close_image_normal"

    iget-object v4, v1, Lcom/jirbo/adcolony/ds;->j:Lcom/jirbo/adcolony/dp;

    iget-object v4, v4, Lcom/jirbo/adcolony/dp;->f:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/jirbo/adcolony/ej;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    iget-object v0, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v3, "close_image_down"

    iget-object v4, v1, Lcom/jirbo/adcolony/ds;->j:Lcom/jirbo/adcolony/dp;

    iget-object v4, v4, Lcom/jirbo/adcolony/dp;->h:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/jirbo/adcolony/ej;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    iget-object v0, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v3, "reload_image_normal"

    iget-object v4, v1, Lcom/jirbo/adcolony/ds;->i:Lcom/jirbo/adcolony/dp;

    iget-object v4, v4, Lcom/jirbo/adcolony/dp;->f:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/jirbo/adcolony/ej;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    iget-object v0, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v3, "reload_image_down"

    iget-object v1, v1, Lcom/jirbo/adcolony/ds;->i:Lcom/jirbo/adcolony/dp;

    iget-object v1, v1, Lcom/jirbo/adcolony/dp;->h:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/jirbo/adcolony/ej;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    :goto_1
    iget-object v0, p0, Lcom/jirbo/adcolony/ca;->m:Lcom/jirbo/adcolony/dc;

    iget-object v0, v0, Lcom/jirbo/adcolony/dc;->y:Lcom/jirbo/adcolony/df;

    .line 450
    iget-object v0, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v1, "end_card_enabled"

    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->m:Lcom/jirbo/adcolony/dc;

    iget-object v2, v2, Lcom/jirbo/adcolony/dc;->x:Lcom/jirbo/adcolony/dq;

    iget-boolean v2, v2, Lcom/jirbo/adcolony/dq;->d:Z

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Z)V

    .line 451
    iget-object v0, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v1, "load_timeout_enabled"

    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->m:Lcom/jirbo/adcolony/dc;

    iget-object v2, v2, Lcom/jirbo/adcolony/dc;->x:Lcom/jirbo/adcolony/dq;

    iget-object v2, v2, Lcom/jirbo/adcolony/dq;->i:Lcom/jirbo/adcolony/ds;

    iget-boolean v2, v2, Lcom/jirbo/adcolony/ds;->c:Z

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Z)V

    .line 452
    iget-object v0, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v1, "load_timeout"

    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->m:Lcom/jirbo/adcolony/dc;

    iget-object v2, v2, Lcom/jirbo/adcolony/dc;->x:Lcom/jirbo/adcolony/dq;

    iget-object v2, v2, Lcom/jirbo/adcolony/dq;->i:Lcom/jirbo/adcolony/ds;

    iget-wide v2, v2, Lcom/jirbo/adcolony/ds;->b:D

    invoke-virtual {v0, v1, v2, v3}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;D)V

    .line 453
    iget-object v0, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v1, "hardware_acceleration_disabled"

    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->a:Lcom/jirbo/adcolony/cb;

    iget-object v2, v2, Lcom/jirbo/adcolony/cb;->b:Lcom/jirbo/adcolony/bz;

    iget-object v2, v2, Lcom/jirbo/adcolony/bz;->i:Lcom/jirbo/adcolony/dn;

    iget-boolean v2, v2, Lcom/jirbo/adcolony/dn;->e:Z

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 430
    :cond_1
    const/4 v1, 0x0

    sput-boolean v1, Lcom/jirbo/adcolony/ba;->M:Z

    .line 431
    iget-object v1, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v3, "end_card_filepath"

    iget-object v4, v0, Lcom/jirbo/adcolony/eg;->d:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/jirbo/adcolony/ej;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    iget-object v1, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v3, "info_image_normal"

    iget-object v4, v0, Lcom/jirbo/adcolony/eg;->f:Lcom/jirbo/adcolony/dp;

    iget-object v4, v4, Lcom/jirbo/adcolony/dp;->f:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/jirbo/adcolony/ej;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    iget-object v1, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v3, "info_image_down"

    iget-object v4, v0, Lcom/jirbo/adcolony/eg;->f:Lcom/jirbo/adcolony/dp;

    iget-object v4, v4, Lcom/jirbo/adcolony/dp;->h:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/jirbo/adcolony/ej;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    iget-object v1, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v3, "info_url"

    iget-object v4, v0, Lcom/jirbo/adcolony/eg;->f:Lcom/jirbo/adcolony/dp;

    iget-object v4, v4, Lcom/jirbo/adcolony/dp;->j:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    iget-object v1, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v3, "replay_image_normal"

    iget-object v4, v0, Lcom/jirbo/adcolony/eg;->h:Lcom/jirbo/adcolony/dp;

    iget-object v4, v4, Lcom/jirbo/adcolony/dp;->f:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/jirbo/adcolony/ej;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    iget-object v1, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v3, "replay_image_down"

    iget-object v4, v0, Lcom/jirbo/adcolony/eg;->h:Lcom/jirbo/adcolony/dp;

    iget-object v4, v4, Lcom/jirbo/adcolony/dp;->h:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/jirbo/adcolony/ej;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    iget-object v1, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v3, "continue_image_normal"

    iget-object v4, v0, Lcom/jirbo/adcolony/eg;->i:Lcom/jirbo/adcolony/dp;

    iget-object v4, v4, Lcom/jirbo/adcolony/dp;->f:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/jirbo/adcolony/ej;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    iget-object v1, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v3, "continue_image_down"

    iget-object v4, v0, Lcom/jirbo/adcolony/eg;->i:Lcom/jirbo/adcolony/dp;

    iget-object v4, v4, Lcom/jirbo/adcolony/dp;->h:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/jirbo/adcolony/ej;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    iget-object v1, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v3, "download_image_normal"

    iget-object v4, v0, Lcom/jirbo/adcolony/eg;->g:Lcom/jirbo/adcolony/dp;

    iget-object v4, v4, Lcom/jirbo/adcolony/dp;->f:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/jirbo/adcolony/ej;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    iget-object v1, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v3, "download_image_down"

    iget-object v4, v0, Lcom/jirbo/adcolony/eg;->g:Lcom/jirbo/adcolony/dp;

    iget-object v4, v4, Lcom/jirbo/adcolony/dp;->h:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/jirbo/adcolony/ej;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    iget-object v1, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v2, "download_url"

    iget-object v0, v0, Lcom/jirbo/adcolony/eg;->g:Lcom/jirbo/adcolony/dp;

    iget-object v0, v0, Lcom/jirbo/adcolony/dp;->j:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 261
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/jirbo/adcolony/ca;->a(Ljava/lang/String;Lcom/jirbo/adcolony/dc;)V

    .line 262
    return-void
.end method

.method c(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 336
    iget-object v0, p0, Lcom/jirbo/adcolony/ca;->a:Lcom/jirbo/adcolony/cb;

    iget-object v0, v0, Lcom/jirbo/adcolony/cb;->b:Lcom/jirbo/adcolony/bz;

    iget-object v0, v0, Lcom/jirbo/adcolony/bz;->i:Lcom/jirbo/adcolony/dn;

    iget-object v0, v0, Lcom/jirbo/adcolony/dn;->n:Lcom/jirbo/adcolony/dj;

    invoke-virtual {v0, p1}, Lcom/jirbo/adcolony/dj;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/dg;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/ca;->l:Lcom/jirbo/adcolony/dg;

    .line 337
    iget-object v0, p0, Lcom/jirbo/adcolony/ca;->l:Lcom/jirbo/adcolony/dg;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/dg;->i()Lcom/jirbo/adcolony/dc;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/ca;->m:Lcom/jirbo/adcolony/dc;

    .line 339
    iget-object v0, p0, Lcom/jirbo/adcolony/ca;->a:Lcom/jirbo/adcolony/cb;

    iget-object v0, v0, Lcom/jirbo/adcolony/cb;->c:Lcom/jirbo/adcolony/ej;

    .line 342
    iget-object v1, p0, Lcom/jirbo/adcolony/ca;->m:Lcom/jirbo/adcolony/dc;

    iget-object v1, v1, Lcom/jirbo/adcolony/dc;->y:Lcom/jirbo/adcolony/df;

    .line 344
    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v3, "video_enabled"

    iget-boolean v4, v1, Lcom/jirbo/adcolony/df;->a:Z

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Z)V

    .line 345
    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v3, "video_filepath"

    invoke-virtual {v1}, Lcom/jirbo/adcolony/df;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v3, "video_width"

    iget v4, v1, Lcom/jirbo/adcolony/df;->b:I

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;I)V

    .line 347
    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v3, "video_height"

    iget v4, v1, Lcom/jirbo/adcolony/df;->c:I

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;I)V

    .line 348
    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v3, "video_duration"

    iget-wide v4, v1, Lcom/jirbo/adcolony/df;->k:D

    invoke-virtual {v2, v3, v4, v5}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;D)V

    .line 350
    iget-wide v2, v1, Lcom/jirbo/adcolony/df;->k:D

    sput-wide v2, Lcom/jirbo/adcolony/ba;->h:D

    .line 353
    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v3, "engagement_delay"

    iget-object v4, v1, Lcom/jirbo/adcolony/df;->m:Lcom/jirbo/adcolony/dp;

    iget v4, v4, Lcom/jirbo/adcolony/dp;->e:I

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;I)V

    .line 354
    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v3, "skip_delay"

    iget-object v4, v1, Lcom/jirbo/adcolony/df;->l:Lcom/jirbo/adcolony/dp;

    iget v4, v4, Lcom/jirbo/adcolony/dp;->e:I

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;I)V

    .line 356
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ca;->b()V

    .line 359
    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->m:Lcom/jirbo/adcolony/dc;

    iget-object v2, v2, Lcom/jirbo/adcolony/dc;->v:Lcom/jirbo/adcolony/dl;

    .line 360
    iget-object v3, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v4, "pre_popup_bg"

    iget-object v5, v2, Lcom/jirbo/adcolony/dl;->b:Lcom/jirbo/adcolony/ef;

    iget-object v5, v5, Lcom/jirbo/adcolony/ef;->d:Lcom/jirbo/adcolony/ee;

    iget-object v5, v5, Lcom/jirbo/adcolony/ee;->e:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/jirbo/adcolony/ej;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    iget-object v3, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v4, "v4vc_logo"

    iget-object v5, v2, Lcom/jirbo/adcolony/dl;->b:Lcom/jirbo/adcolony/ef;

    iget-object v5, v5, Lcom/jirbo/adcolony/ef;->d:Lcom/jirbo/adcolony/ee;

    iget-object v5, v5, Lcom/jirbo/adcolony/ee;->l:Lcom/jirbo/adcolony/du;

    iget-object v5, v5, Lcom/jirbo/adcolony/du;->d:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/jirbo/adcolony/ej;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    iget-object v3, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v4, "no_button_normal"

    iget-object v5, v2, Lcom/jirbo/adcolony/dl;->b:Lcom/jirbo/adcolony/ef;

    iget-object v5, v5, Lcom/jirbo/adcolony/ef;->d:Lcom/jirbo/adcolony/ee;

    iget-object v5, v5, Lcom/jirbo/adcolony/ee;->n:Lcom/jirbo/adcolony/dp;

    iget-object v5, v5, Lcom/jirbo/adcolony/dp;->f:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/jirbo/adcolony/ej;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    iget-object v3, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v4, "no_button_down"

    iget-object v5, v2, Lcom/jirbo/adcolony/dl;->b:Lcom/jirbo/adcolony/ef;

    iget-object v5, v5, Lcom/jirbo/adcolony/ef;->d:Lcom/jirbo/adcolony/ee;

    iget-object v5, v5, Lcom/jirbo/adcolony/ee;->n:Lcom/jirbo/adcolony/dp;

    iget-object v5, v5, Lcom/jirbo/adcolony/dp;->h:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/jirbo/adcolony/ej;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    iget-object v3, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v4, "yes_button_normal"

    iget-object v5, v2, Lcom/jirbo/adcolony/dl;->b:Lcom/jirbo/adcolony/ef;

    iget-object v5, v5, Lcom/jirbo/adcolony/ef;->d:Lcom/jirbo/adcolony/ee;

    iget-object v5, v5, Lcom/jirbo/adcolony/ee;->m:Lcom/jirbo/adcolony/dp;

    iget-object v5, v5, Lcom/jirbo/adcolony/dp;->f:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/jirbo/adcolony/ej;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    iget-object v3, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v4, "yes_button_down"

    iget-object v5, v2, Lcom/jirbo/adcolony/dl;->b:Lcom/jirbo/adcolony/ef;

    iget-object v5, v5, Lcom/jirbo/adcolony/ef;->d:Lcom/jirbo/adcolony/ee;

    iget-object v5, v5, Lcom/jirbo/adcolony/ee;->m:Lcom/jirbo/adcolony/dp;

    iget-object v5, v5, Lcom/jirbo/adcolony/dp;->h:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/jirbo/adcolony/ej;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    iget-object v3, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v4, "done_button_normal"

    iget-object v5, v2, Lcom/jirbo/adcolony/dl;->c:Lcom/jirbo/adcolony/ed;

    iget-object v5, v5, Lcom/jirbo/adcolony/ed;->d:Lcom/jirbo/adcolony/ec;

    iget-object v5, v5, Lcom/jirbo/adcolony/ec;->m:Lcom/jirbo/adcolony/dp;

    iget-object v5, v5, Lcom/jirbo/adcolony/dp;->f:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/jirbo/adcolony/ej;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    iget-object v3, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v4, "done_button_down"

    iget-object v2, v2, Lcom/jirbo/adcolony/dl;->c:Lcom/jirbo/adcolony/ed;

    iget-object v2, v2, Lcom/jirbo/adcolony/ed;->d:Lcom/jirbo/adcolony/ec;

    iget-object v2, v2, Lcom/jirbo/adcolony/ec;->m:Lcom/jirbo/adcolony/dp;

    iget-object v2, v2, Lcom/jirbo/adcolony/dp;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/ej;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v3, "browser_close_image_normal"

    iget-object v4, p0, Lcom/jirbo/adcolony/ca;->m:Lcom/jirbo/adcolony/dc;

    iget-object v4, v4, Lcom/jirbo/adcolony/dc;->u:Lcom/jirbo/adcolony/dv;

    iget-object v4, v4, Lcom/jirbo/adcolony/dv;->k:Lcom/jirbo/adcolony/dp;

    iget-object v4, v4, Lcom/jirbo/adcolony/dp;->f:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/ej;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v3, "browser_close_image_down"

    iget-object v4, p0, Lcom/jirbo/adcolony/ca;->m:Lcom/jirbo/adcolony/dc;

    iget-object v4, v4, Lcom/jirbo/adcolony/dc;->u:Lcom/jirbo/adcolony/dv;

    iget-object v4, v4, Lcom/jirbo/adcolony/dv;->k:Lcom/jirbo/adcolony/dp;

    iget-object v4, v4, Lcom/jirbo/adcolony/dp;->h:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/ej;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v3, "browser_reload_image_normal"

    iget-object v4, p0, Lcom/jirbo/adcolony/ca;->m:Lcom/jirbo/adcolony/dc;

    iget-object v4, v4, Lcom/jirbo/adcolony/dc;->u:Lcom/jirbo/adcolony/dv;

    iget-object v4, v4, Lcom/jirbo/adcolony/dv;->m:Lcom/jirbo/adcolony/dp;

    iget-object v4, v4, Lcom/jirbo/adcolony/dp;->f:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/ej;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v3, "browser_reload_image_down"

    iget-object v4, p0, Lcom/jirbo/adcolony/ca;->m:Lcom/jirbo/adcolony/dc;

    iget-object v4, v4, Lcom/jirbo/adcolony/dc;->u:Lcom/jirbo/adcolony/dv;

    iget-object v4, v4, Lcom/jirbo/adcolony/dv;->m:Lcom/jirbo/adcolony/dp;

    iget-object v4, v4, Lcom/jirbo/adcolony/dp;->h:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/ej;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v3, "browser_back_image_normal"

    iget-object v4, p0, Lcom/jirbo/adcolony/ca;->m:Lcom/jirbo/adcolony/dc;

    iget-object v4, v4, Lcom/jirbo/adcolony/dc;->u:Lcom/jirbo/adcolony/dv;

    iget-object v4, v4, Lcom/jirbo/adcolony/dv;->j:Lcom/jirbo/adcolony/dp;

    iget-object v4, v4, Lcom/jirbo/adcolony/dp;->f:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/ej;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v3, "browser_back_image_down"

    iget-object v4, p0, Lcom/jirbo/adcolony/ca;->m:Lcom/jirbo/adcolony/dc;

    iget-object v4, v4, Lcom/jirbo/adcolony/dc;->u:Lcom/jirbo/adcolony/dv;

    iget-object v4, v4, Lcom/jirbo/adcolony/dv;->j:Lcom/jirbo/adcolony/dp;

    iget-object v4, v4, Lcom/jirbo/adcolony/dp;->h:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/ej;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v3, "browser_forward_image_normal"

    iget-object v4, p0, Lcom/jirbo/adcolony/ca;->m:Lcom/jirbo/adcolony/dc;

    iget-object v4, v4, Lcom/jirbo/adcolony/dc;->u:Lcom/jirbo/adcolony/dv;

    iget-object v4, v4, Lcom/jirbo/adcolony/dv;->l:Lcom/jirbo/adcolony/dp;

    iget-object v4, v4, Lcom/jirbo/adcolony/dp;->f:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/ej;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v3, "browser_forward_image_down"

    iget-object v4, p0, Lcom/jirbo/adcolony/ca;->m:Lcom/jirbo/adcolony/dc;

    iget-object v4, v4, Lcom/jirbo/adcolony/dc;->u:Lcom/jirbo/adcolony/dv;

    iget-object v4, v4, Lcom/jirbo/adcolony/dv;->l:Lcom/jirbo/adcolony/dp;

    iget-object v4, v4, Lcom/jirbo/adcolony/dp;->h:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/ej;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v3, "browser_stop_image_normal"

    iget-object v4, p0, Lcom/jirbo/adcolony/ca;->m:Lcom/jirbo/adcolony/dc;

    iget-object v4, v4, Lcom/jirbo/adcolony/dc;->u:Lcom/jirbo/adcolony/dv;

    iget-object v4, v4, Lcom/jirbo/adcolony/dv;->i:Lcom/jirbo/adcolony/dp;

    iget-object v4, v4, Lcom/jirbo/adcolony/dp;->f:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/ej;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v3, "browser_stop_image_down"

    iget-object v4, p0, Lcom/jirbo/adcolony/ca;->m:Lcom/jirbo/adcolony/dc;

    iget-object v4, v4, Lcom/jirbo/adcolony/dc;->u:Lcom/jirbo/adcolony/dv;

    iget-object v4, v4, Lcom/jirbo/adcolony/dv;->i:Lcom/jirbo/adcolony/dp;

    iget-object v4, v4, Lcom/jirbo/adcolony/dp;->h:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/ej;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v3, "browser_glow_button"

    iget-object v4, p0, Lcom/jirbo/adcolony/ca;->m:Lcom/jirbo/adcolony/dc;

    iget-object v4, v4, Lcom/jirbo/adcolony/dc;->u:Lcom/jirbo/adcolony/dv;

    iget-object v4, v4, Lcom/jirbo/adcolony/dv;->a:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/ej;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v3, "browser_icon"

    iget-object v4, p0, Lcom/jirbo/adcolony/ca;->m:Lcom/jirbo/adcolony/dc;

    iget-object v4, v4, Lcom/jirbo/adcolony/dc;->u:Lcom/jirbo/adcolony/dv;

    iget-object v4, v4, Lcom/jirbo/adcolony/dv;->h:Lcom/jirbo/adcolony/du;

    iget-object v4, v4, Lcom/jirbo/adcolony/du;->d:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/ej;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v3, "skip_video_image_normal"

    iget-object v4, v1, Lcom/jirbo/adcolony/df;->l:Lcom/jirbo/adcolony/dp;

    iget-object v4, v4, Lcom/jirbo/adcolony/dp;->f:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/ej;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v3, "skip_video_image_down"

    iget-object v4, v1, Lcom/jirbo/adcolony/df;->l:Lcom/jirbo/adcolony/dp;

    iget-object v4, v4, Lcom/jirbo/adcolony/dp;->h:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/ej;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v3, "engagement_image_normal"

    iget-object v4, v1, Lcom/jirbo/adcolony/df;->m:Lcom/jirbo/adcolony/dp;

    iget-object v4, v4, Lcom/jirbo/adcolony/dp;->f:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/ej;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v3, "engagement_image_down"

    iget-object v4, v1, Lcom/jirbo/adcolony/df;->m:Lcom/jirbo/adcolony/dp;

    iget-object v4, v4, Lcom/jirbo/adcolony/dp;->h:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/ej;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v3, "engagement_height"

    iget-object v4, v1, Lcom/jirbo/adcolony/df;->m:Lcom/jirbo/adcolony/dp;

    iget v4, v4, Lcom/jirbo/adcolony/dp;->c:I

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;I)V

    .line 392
    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v3, "image_overlay_enabled"

    iget-object v4, v1, Lcom/jirbo/adcolony/df;->n:Lcom/jirbo/adcolony/dp;

    iget-boolean v4, v4, Lcom/jirbo/adcolony/dp;->a:Z

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Z)V

    .line 393
    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v3, "image_overlay_filepath"

    iget-object v4, v1, Lcom/jirbo/adcolony/df;->n:Lcom/jirbo/adcolony/dp;

    iget-object v4, v4, Lcom/jirbo/adcolony/dp;->f:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/ej;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v3, "haptics_enabled"

    iget-object v4, v1, Lcom/jirbo/adcolony/df;->o:Lcom/jirbo/adcolony/dt;

    iget-boolean v4, v4, Lcom/jirbo/adcolony/dt;->a:Z

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Z)V

    .line 396
    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v3, "haptics_filepath"

    iget-object v1, v1, Lcom/jirbo/adcolony/df;->o:Lcom/jirbo/adcolony/dt;

    iget-object v1, v1, Lcom/jirbo/adcolony/dt;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ej;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    iget-object v0, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v1, "v4iap_enabled"

    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->m:Lcom/jirbo/adcolony/dc;

    iget-object v2, v2, Lcom/jirbo/adcolony/dc;->A:Lcom/jirbo/adcolony/dd;

    iget-boolean v2, v2, Lcom/jirbo/adcolony/dd;->c:Z

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Z)V

    .line 399
    iget-object v0, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v1, "product_id"

    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->m:Lcom/jirbo/adcolony/dc;

    iget-object v2, v2, Lcom/jirbo/adcolony/dc;->A:Lcom/jirbo/adcolony/dd;

    iget-object v2, v2, Lcom/jirbo/adcolony/dd;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    iget-object v0, p0, Lcom/jirbo/adcolony/ca;->h:Lcom/jirbo/adcolony/h;

    const-string/jumbo v1, "in_progress"

    iget-object v2, p0, Lcom/jirbo/adcolony/ca;->m:Lcom/jirbo/adcolony/dc;

    iget-object v2, v2, Lcom/jirbo/adcolony/dc;->A:Lcom/jirbo/adcolony/dd;

    iget-object v2, v2, Lcom/jirbo/adcolony/dd;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    return-void
.end method
