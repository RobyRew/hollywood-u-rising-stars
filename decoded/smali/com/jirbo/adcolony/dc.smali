.class Lcom/jirbo/adcolony/dc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field A:Lcom/jirbo/adcolony/dd;

.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:I

.field d:I

.field e:I

.field f:I

.field g:I

.field h:I

.field i:J

.field j:Z

.field k:Z

.field l:Z

.field m:Z

.field n:Z

.field o:Z

.field p:Z

.field q:Z

.field r:Z

.field s:Lcom/jirbo/adcolony/dw;

.field t:Lcom/jirbo/adcolony/ei;

.field u:Lcom/jirbo/adcolony/dv;

.field v:Lcom/jirbo/adcolony/dl;

.field w:Lcom/jirbo/adcolony/dk;

.field x:Lcom/jirbo/adcolony/dq;

.field y:Lcom/jirbo/adcolony/df;

.field z:Lcom/jirbo/adcolony/dy;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 930
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 967
    iget-object v1, p0, Lcom/jirbo/adcolony/dc;->u:Lcom/jirbo/adcolony/dv;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/dv;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 984
    :cond_0
    :goto_0
    return v0

    .line 970
    :cond_1
    iget-object v1, p0, Lcom/jirbo/adcolony/dc;->v:Lcom/jirbo/adcolony/dl;

    iget-boolean v1, v1, Lcom/jirbo/adcolony/dl;->a:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/jirbo/adcolony/dc;->v:Lcom/jirbo/adcolony/dl;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/dl;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 972
    :cond_2
    iget-object v1, p0, Lcom/jirbo/adcolony/dc;->z:Lcom/jirbo/adcolony/dy;

    iget-boolean v1, v1, Lcom/jirbo/adcolony/dy;->a:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/jirbo/adcolony/dc;->z:Lcom/jirbo/adcolony/dy;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/dy;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 975
    :cond_3
    iget-object v1, p0, Lcom/jirbo/adcolony/dc;->x:Lcom/jirbo/adcolony/dq;

    iget-boolean v1, v1, Lcom/jirbo/adcolony/dq;->d:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/jirbo/adcolony/dc;->x:Lcom/jirbo/adcolony/dq;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/dq;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 978
    :cond_4
    iget-object v1, p0, Lcom/jirbo/adcolony/dc;->y:Lcom/jirbo/adcolony/df;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/df;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 980
    iget-object v1, p0, Lcom/jirbo/adcolony/dc;->A:Lcom/jirbo/adcolony/dd;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/dd;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 982
    invoke-virtual {p0}, Lcom/jirbo/adcolony/dc;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 984
    const/4 v0, 0x1

    goto :goto_0
.end method

.method a(Lcom/jirbo/adcolony/h;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1002
    if-nez p1, :cond_1

    .line 1062
    :cond_0
    :goto_0
    return v0

    .line 1003
    :cond_1
    const-string/jumbo v1, "uuid"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/dc;->a:Ljava/lang/String;

    .line 1006
    const-string/jumbo v1, "title"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/dc;->b:Ljava/lang/String;

    .line 1007
    const-string/jumbo v1, "ad_campaign_id"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/h;->f(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/jirbo/adcolony/dc;->c:I

    .line 1008
    const-string/jumbo v1, "ad_id"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/h;->f(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/jirbo/adcolony/dc;->d:I

    .line 1009
    const-string/jumbo v1, "ad_group_id"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/h;->f(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/jirbo/adcolony/dc;->e:I

    .line 1010
    const-string/jumbo v1, "cpcv_bid"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/h;->f(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/jirbo/adcolony/dc;->f:I

    .line 1011
    const-string/jumbo v1, "net_earnings"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/h;->f(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/jirbo/adcolony/dc;->g:I

    .line 1012
    const-string/jumbo v1, "expires"

    const/16 v2, 0x294

    invoke-virtual {p1, v1, v2}, Lcom/jirbo/adcolony/h;->a(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/jirbo/adcolony/dc;->h:I

    .line 1013
    const-string/jumbo v1, "enable_in_app_store"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/h;->g(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jirbo/adcolony/dc;->j:Z

    .line 1014
    const-string/jumbo v1, "video_events_on_replays"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/h;->g(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jirbo/adcolony/dc;->k:Z

    .line 1015
    const-string/jumbo v1, "test_ad"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/h;->g(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jirbo/adcolony/dc;->l:Z

    .line 1016
    const-string/jumbo v1, "fullscreen"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/h;->g(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jirbo/adcolony/dc;->m:Z

    .line 1017
    const-string/jumbo v1, "house_ad"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/h;->g(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jirbo/adcolony/dc;->n:Z

    .line 1018
    const-string/jumbo v1, "contracted"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/h;->g(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jirbo/adcolony/dc;->o:Z

    .line 1020
    iput-boolean v0, p0, Lcom/jirbo/adcolony/dc;->r:Z

    .line 1022
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/jirbo/adcolony/dc;->i:J

    .line 1025
    new-instance v1, Lcom/jirbo/adcolony/dw;

    invoke-direct {v1}, Lcom/jirbo/adcolony/dw;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/dc;->s:Lcom/jirbo/adcolony/dw;

    .line 1026
    iget-object v1, p0, Lcom/jirbo/adcolony/dc;->s:Lcom/jirbo/adcolony/dw;

    const-string/jumbo v2, "limits"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/h;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/dw;->a(Lcom/jirbo/adcolony/h;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1029
    new-instance v1, Lcom/jirbo/adcolony/ei;

    invoke-direct {v1}, Lcom/jirbo/adcolony/ei;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/dc;->t:Lcom/jirbo/adcolony/ei;

    .line 1030
    iget-object v1, p0, Lcom/jirbo/adcolony/dc;->t:Lcom/jirbo/adcolony/ei;

    const-string/jumbo v2, "third_party_tracking"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/h;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ei;->a(Lcom/jirbo/adcolony/h;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1033
    new-instance v1, Lcom/jirbo/adcolony/dv;

    invoke-direct {v1}, Lcom/jirbo/adcolony/dv;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/dc;->u:Lcom/jirbo/adcolony/dv;

    .line 1034
    iget-object v1, p0, Lcom/jirbo/adcolony/dc;->u:Lcom/jirbo/adcolony/dv;

    const-string/jumbo v2, "in_app_browser"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/h;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/dv;->a(Lcom/jirbo/adcolony/h;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1036
    new-instance v1, Lcom/jirbo/adcolony/dy;

    invoke-direct {v1}, Lcom/jirbo/adcolony/dy;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/dc;->z:Lcom/jirbo/adcolony/dy;

    .line 1037
    iget-object v1, p0, Lcom/jirbo/adcolony/dc;->z:Lcom/jirbo/adcolony/dy;

    const-string/jumbo v2, "native"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/h;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/dy;->a(Lcom/jirbo/adcolony/h;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1040
    new-instance v1, Lcom/jirbo/adcolony/dl;

    invoke-direct {v1}, Lcom/jirbo/adcolony/dl;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/dc;->v:Lcom/jirbo/adcolony/dl;

    .line 1041
    iget-object v1, p0, Lcom/jirbo/adcolony/dc;->v:Lcom/jirbo/adcolony/dl;

    const-string/jumbo v2, "v4vc"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/h;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/dl;->a(Lcom/jirbo/adcolony/h;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1044
    new-instance v1, Lcom/jirbo/adcolony/dk;

    invoke-direct {v1}, Lcom/jirbo/adcolony/dk;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/dc;->w:Lcom/jirbo/adcolony/dk;

    .line 1045
    iget-object v1, p0, Lcom/jirbo/adcolony/dc;->w:Lcom/jirbo/adcolony/dk;

    const-string/jumbo v2, "ad_tracking"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/h;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/dk;->a(Lcom/jirbo/adcolony/h;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1048
    new-instance v1, Lcom/jirbo/adcolony/dq;

    invoke-direct {v1}, Lcom/jirbo/adcolony/dq;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/dc;->x:Lcom/jirbo/adcolony/dq;

    .line 1049
    iget-object v1, p0, Lcom/jirbo/adcolony/dc;->x:Lcom/jirbo/adcolony/dq;

    const-string/jumbo v2, "companion_ad"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/h;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/dq;->a(Lcom/jirbo/adcolony/h;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1052
    new-instance v1, Lcom/jirbo/adcolony/df;

    invoke-direct {v1}, Lcom/jirbo/adcolony/df;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/dc;->y:Lcom/jirbo/adcolony/df;

    .line 1053
    iget-object v1, p0, Lcom/jirbo/adcolony/dc;->y:Lcom/jirbo/adcolony/df;

    const-string/jumbo v2, "video"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/h;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/df;->a(Lcom/jirbo/adcolony/h;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1055
    new-instance v1, Lcom/jirbo/adcolony/dd;

    invoke-direct {v1}, Lcom/jirbo/adcolony/dd;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/dc;->A:Lcom/jirbo/adcolony/dd;

    .line 1056
    iget-object v1, p0, Lcom/jirbo/adcolony/dc;->A:Lcom/jirbo/adcolony/dd;

    const-string/jumbo v2, "v4iap"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/h;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/dd;->a(Lcom/jirbo/adcolony/h;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1060
    sget-object v0, Lcom/jirbo/adcolony/cx;->b:Lcom/jirbo/adcolony/cx;

    const-string/jumbo v1, "Finished parsing ad"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/cx;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/cx;

    .line 1062
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method b()Z
    .locals 4

    .prologue
    .line 990
    iget-boolean v0, p0, Lcom/jirbo/adcolony/dc;->p:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/jirbo/adcolony/dc;->i:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/jirbo/adcolony/dc;->h:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 991
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c()Z
    .locals 1

    .prologue
    .line 996
    iget-boolean v0, p0, Lcom/jirbo/adcolony/dc;->q:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 997
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method d()V
    .locals 1

    .prologue
    .line 1067
    iget-object v0, p0, Lcom/jirbo/adcolony/dc;->v:Lcom/jirbo/adcolony/dl;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/dl;->b()V

    .line 1068
    iget-object v0, p0, Lcom/jirbo/adcolony/dc;->u:Lcom/jirbo/adcolony/dv;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/dv;->b()V

    .line 1069
    iget-object v0, p0, Lcom/jirbo/adcolony/dc;->z:Lcom/jirbo/adcolony/dy;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/dy;->b()V

    .line 1070
    iget-object v0, p0, Lcom/jirbo/adcolony/dc;->x:Lcom/jirbo/adcolony/dq;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/dq;->b()V

    .line 1071
    iget-object v0, p0, Lcom/jirbo/adcolony/dc;->y:Lcom/jirbo/adcolony/df;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/df;->c()V

    .line 1072
    return-void
.end method
