.class Lcom/jirbo/adcolony/dy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Z

.field b:Z

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Lcom/jirbo/adcolony/eb;

.field g:Lcom/jirbo/adcolony/ea;

.field h:Lcom/jirbo/adcolony/dz;

.field i:Z

.field j:Lcom/jirbo/adcolony/du;

.field k:Lcom/jirbo/adcolony/du;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1184
    iget-boolean v1, p0, Lcom/jirbo/adcolony/dy;->a:Z

    if-nez v1, :cond_1

    .line 1193
    :cond_0
    :goto_0
    return v0

    .line 1185
    :cond_1
    sget-object v1, Lcom/jirbo/adcolony/ba;->c:Lcom/jirbo/adcolony/cb;

    iget-object v1, v1, Lcom/jirbo/adcolony/cb;->c:Lcom/jirbo/adcolony/ej;

    iget-object v2, p0, Lcom/jirbo/adcolony/dy;->g:Lcom/jirbo/adcolony/ea;

    iget-object v2, v2, Lcom/jirbo/adcolony/ea;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ej;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1186
    sget-object v1, Lcom/jirbo/adcolony/ba;->c:Lcom/jirbo/adcolony/cb;

    iget-object v1, v1, Lcom/jirbo/adcolony/cb;->c:Lcom/jirbo/adcolony/ej;

    iget-object v2, p0, Lcom/jirbo/adcolony/dy;->f:Lcom/jirbo/adcolony/eb;

    iget-object v2, v2, Lcom/jirbo/adcolony/eb;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ej;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1188
    iget-object v1, p0, Lcom/jirbo/adcolony/dy;->j:Lcom/jirbo/adcolony/du;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/du;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1189
    iget-object v1, p0, Lcom/jirbo/adcolony/dy;->k:Lcom/jirbo/adcolony/du;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/du;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1191
    iget-boolean v1, p0, Lcom/jirbo/adcolony/dy;->i:Z

    if-nez v1, :cond_0

    .line 1193
    const/4 v0, 0x1

    goto :goto_0
.end method

.method a(Lcom/jirbo/adcolony/h;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1154
    if-nez p1, :cond_1

    .line 1179
    :cond_0
    :goto_0
    return v0

    .line 1156
    :cond_1
    const-string/jumbo v1, "enabled"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/h;->g(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jirbo/adcolony/dy;->a:Z

    .line 1157
    const-string/jumbo v1, "advertiser_name"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/dy;->c:Ljava/lang/String;

    .line 1158
    const-string/jumbo v1, "description"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/dy;->d:Ljava/lang/String;

    .line 1159
    const-string/jumbo v1, "title"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/dy;->e:Ljava/lang/String;

    .line 1161
    iput-boolean v0, p0, Lcom/jirbo/adcolony/dy;->i:Z

    .line 1163
    new-instance v1, Lcom/jirbo/adcolony/eb;

    invoke-direct {v1}, Lcom/jirbo/adcolony/eb;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/dy;->f:Lcom/jirbo/adcolony/eb;

    .line 1164
    iget-object v1, p0, Lcom/jirbo/adcolony/dy;->f:Lcom/jirbo/adcolony/eb;

    const-string/jumbo v2, "thumb"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/h;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/eb;->a(Lcom/jirbo/adcolony/h;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1166
    new-instance v1, Lcom/jirbo/adcolony/ea;

    invoke-direct {v1}, Lcom/jirbo/adcolony/ea;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/dy;->g:Lcom/jirbo/adcolony/ea;

    .line 1167
    iget-object v1, p0, Lcom/jirbo/adcolony/dy;->g:Lcom/jirbo/adcolony/ea;

    const-string/jumbo v2, "poster"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/h;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ea;->a(Lcom/jirbo/adcolony/h;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1169
    new-instance v1, Lcom/jirbo/adcolony/du;

    invoke-direct {v1}, Lcom/jirbo/adcolony/du;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/dy;->j:Lcom/jirbo/adcolony/du;

    .line 1170
    iget-object v1, p0, Lcom/jirbo/adcolony/dy;->j:Lcom/jirbo/adcolony/du;

    const-string/jumbo v2, "mute"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/h;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/du;->a(Lcom/jirbo/adcolony/h;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1172
    iget-object v1, p0, Lcom/jirbo/adcolony/dy;->j:Lcom/jirbo/adcolony/du;

    iget-boolean v1, v1, Lcom/jirbo/adcolony/du;->f:Z

    iput-boolean v1, p0, Lcom/jirbo/adcolony/dy;->b:Z

    .line 1173
    new-instance v1, Lcom/jirbo/adcolony/du;

    invoke-direct {v1}, Lcom/jirbo/adcolony/du;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/dy;->k:Lcom/jirbo/adcolony/du;

    .line 1174
    iget-object v1, p0, Lcom/jirbo/adcolony/dy;->k:Lcom/jirbo/adcolony/du;

    const-string/jumbo v2, "unmute"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/h;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/du;->a(Lcom/jirbo/adcolony/h;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1176
    new-instance v1, Lcom/jirbo/adcolony/dz;

    invoke-direct {v1}, Lcom/jirbo/adcolony/dz;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/dy;->h:Lcom/jirbo/adcolony/dz;

    .line 1177
    iget-object v1, p0, Lcom/jirbo/adcolony/dy;->h:Lcom/jirbo/adcolony/dz;

    const-string/jumbo v2, "overlay"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/h;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/dz;->a(Lcom/jirbo/adcolony/h;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1179
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method b()V
    .locals 3

    .prologue
    .line 1198
    sget-object v0, Lcom/jirbo/adcolony/ba;->c:Lcom/jirbo/adcolony/cb;

    iget-object v0, v0, Lcom/jirbo/adcolony/cb;->c:Lcom/jirbo/adcolony/ej;

    iget-object v1, p0, Lcom/jirbo/adcolony/dy;->g:Lcom/jirbo/adcolony/ea;

    iget-object v1, v1, Lcom/jirbo/adcolony/ea;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/jirbo/adcolony/dy;->g:Lcom/jirbo/adcolony/ea;

    iget-object v2, v2, Lcom/jirbo/adcolony/ea;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ej;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1199
    sget-object v0, Lcom/jirbo/adcolony/ba;->c:Lcom/jirbo/adcolony/cb;

    iget-object v0, v0, Lcom/jirbo/adcolony/cb;->c:Lcom/jirbo/adcolony/ej;

    iget-object v1, p0, Lcom/jirbo/adcolony/dy;->f:Lcom/jirbo/adcolony/eb;

    iget-object v1, v1, Lcom/jirbo/adcolony/eb;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/jirbo/adcolony/dy;->f:Lcom/jirbo/adcolony/eb;

    iget-object v2, v2, Lcom/jirbo/adcolony/eb;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ej;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1201
    iget-object v0, p0, Lcom/jirbo/adcolony/dy;->j:Lcom/jirbo/adcolony/du;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/du;->b()V

    .line 1202
    iget-object v0, p0, Lcom/jirbo/adcolony/dy;->k:Lcom/jirbo/adcolony/du;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/du;->b()V

    .line 1203
    return-void
.end method
