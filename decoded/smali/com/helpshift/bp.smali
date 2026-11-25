.class Lcom/helpshift/bp;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/helpshift/HSFaqsFragment;


# direct methods
.method constructor <init>(Lcom/helpshift/HSFaqsFragment;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/helpshift/bp;->a:Lcom/helpshift/HSFaqsFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 214
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 215
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 216
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 217
    iget-object v2, p0, Lcom/helpshift/bp;->a:Lcom/helpshift/HSFaqsFragment;

    invoke-static {v2}, Lcom/helpshift/HSFaqsFragment;->h(Lcom/helpshift/HSFaqsFragment;)Lcom/helpshift/al;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/helpshift/al;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    .line 218
    iget-object v0, p0, Lcom/helpshift/bp;->a:Lcom/helpshift/HSFaqsFragment;

    invoke-static {v0}, Lcom/helpshift/HSFaqsFragment;->i(Lcom/helpshift/HSFaqsFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 220
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v7, :cond_0

    .line 221
    iget-object v0, p0, Lcom/helpshift/bp;->a:Lcom/helpshift/HSFaqsFragment;

    invoke-static {v0}, Lcom/helpshift/HSFaqsFragment;->h(Lcom/helpshift/HSFaqsFragment;)Lcom/helpshift/al;

    move-result-object v3

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/ew;

    invoke-virtual {v0}, Lcom/helpshift/ew;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/helpshift/al;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 222
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 223
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/l;

    .line 224
    iget-object v3, p0, Lcom/helpshift/bp;->a:Lcom/helpshift/HSFaqsFragment;

    invoke-static {v3}, Lcom/helpshift/HSFaqsFragment;->i(Lcom/helpshift/HSFaqsFragment;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/helpshift/l;

    invoke-virtual {v0}, Lcom/helpshift/l;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/helpshift/l;->b()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v6, "question"

    invoke-direct {v4, v5, v0, v6}, Lcom/helpshift/l;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 229
    :cond_0
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 230
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/ew;

    .line 231
    iget-object v3, p0, Lcom/helpshift/bp;->a:Lcom/helpshift/HSFaqsFragment;

    invoke-static {v3}, Lcom/helpshift/HSFaqsFragment;->h(Lcom/helpshift/HSFaqsFragment;)Lcom/helpshift/al;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/helpshift/al;->a(Lcom/helpshift/ew;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 232
    iget-object v3, p0, Lcom/helpshift/bp;->a:Lcom/helpshift/HSFaqsFragment;

    invoke-static {v3}, Lcom/helpshift/HSFaqsFragment;->i(Lcom/helpshift/HSFaqsFragment;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/helpshift/l;

    invoke-virtual {v0}, Lcom/helpshift/ew;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/helpshift/ew;->a()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v6, "section"

    invoke-direct {v4, v5, v0, v6}, Lcom/helpshift/l;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 239
    :cond_2
    iget-object v0, p0, Lcom/helpshift/bp;->a:Lcom/helpshift/HSFaqsFragment;

    invoke-static {v0}, Lcom/helpshift/HSFaqsFragment;->i(Lcom/helpshift/HSFaqsFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 240
    iget-object v0, p0, Lcom/helpshift/bp;->a:Lcom/helpshift/HSFaqsFragment;

    invoke-static {v0}, Lcom/helpshift/HSFaqsFragment;->i(Lcom/helpshift/HSFaqsFragment;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/helpshift/l;

    iget-object v2, p0, Lcom/helpshift/bp;->a:Lcom/helpshift/HSFaqsFragment;

    invoke-virtual {v2}, Lcom/helpshift/HSFaqsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/helpshift/k;->i:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "0"

    const-string/jumbo v4, "empty_status"

    invoke-direct {v1, v2, v3, v4}, Lcom/helpshift/l;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    :cond_3
    iget-object v0, p0, Lcom/helpshift/bp;->a:Lcom/helpshift/HSFaqsFragment;

    invoke-virtual {v0}, Lcom/helpshift/HSFaqsFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 245
    iget-object v0, p0, Lcom/helpshift/bp;->a:Lcom/helpshift/HSFaqsFragment;

    invoke-virtual {v0, v7}, Lcom/helpshift/HSFaqsFragment;->setListShown(Z)V

    .line 247
    :cond_4
    iget-object v0, p0, Lcom/helpshift/bp;->a:Lcom/helpshift/HSFaqsFragment;

    invoke-static {v0}, Lcom/helpshift/HSFaqsFragment;->j(Lcom/helpshift/HSFaqsFragment;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 248
    return-void
.end method
