.class Lcom/helpshift/app/g;
.super Landroid/view/MenuInflater;
.source "SourceFile"


# instance fields
.field a:Landroid/view/MenuInflater;

.field final synthetic b:Lcom/helpshift/app/ActionBarHelperBase;


# direct methods
.method public constructor <init>(Lcom/helpshift/app/ActionBarHelperBase;Landroid/content/Context;Landroid/view/MenuInflater;)V
    .locals 0

    .prologue
    .line 356
    iput-object p1, p0, Lcom/helpshift/app/g;->b:Lcom/helpshift/app/ActionBarHelperBase;

    .line 357
    invoke-direct {p0, p2}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    .line 358
    iput-object p3, p0, Lcom/helpshift/app/g;->a:Landroid/view/MenuInflater;

    .line 359
    return-void
.end method

.method private a(I)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 391
    const/4 v1, 0x0

    .line 393
    :try_start_0
    iget-object v2, p0, Lcom/helpshift/app/g;->b:Lcom/helpshift/app/ActionBarHelperBase;

    iget-object v2, v2, Lcom/helpshift/app/ActionBarHelperBase;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 395
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v2

    .line 398
    :goto_0
    if-nez v0, :cond_5

    .line 399
    packed-switch v2, :pswitch_data_0

    .line 434
    :cond_0
    :goto_1
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    goto :goto_0

    .line 402
    :pswitch_0
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "item"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 406
    const-string/jumbo v2, "http://schemas.android.com/apk/res/android"

    const-string/jumbo v3, "id"

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 408
    if-eqz v2, :cond_0

    .line 412
    const-string/jumbo v3, "http://schemas.android.com/apk/res/android"

    const-string/jumbo v4, "showAsAction"

    const/4 v5, -0x1

    invoke-interface {v1, v3, v4, v5}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    .line 414
    and-int/lit8 v4, v3, 0x2

    if-nez v4, :cond_1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3

    .line 416
    :cond_1
    const-string/jumbo v3, "http://schemas.android.com/apk/res/android"

    const-string/jumbo v4, "actionLayout"

    const/4 v5, 0x0

    invoke-interface {v1, v3, v4, v5}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    .line 417
    if-eqz v3, :cond_2

    .line 418
    iget-object v4, p0, Lcom/helpshift/app/g;->b:Lcom/helpshift/app/ActionBarHelperBase;

    invoke-static {v4}, Lcom/helpshift/app/ActionBarHelperBase;->c(Lcom/helpshift/app/ActionBarHelperBase;)Ljava/util/Map;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    :cond_2
    iget-object v3, p0, Lcom/helpshift/app/g;->b:Lcom/helpshift/app/ActionBarHelperBase;

    invoke-static {v3}, Lcom/helpshift/app/ActionBarHelperBase;->d(Lcom/helpshift/app/ActionBarHelperBase;)Ljava/util/Set;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 423
    :cond_3
    const-string/jumbo v3, "http://schemas.android.com/apk/res/android"

    const-string/jumbo v4, "actionViewClass"

    invoke-interface {v1, v3, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 425
    if-eqz v3, :cond_0

    .line 426
    iget-object v4, p0, Lcom/helpshift/app/g;->b:Lcom/helpshift/app/ActionBarHelperBase;

    invoke-static {v4}, Lcom/helpshift/app/ActionBarHelperBase;->a(Lcom/helpshift/app/ActionBarHelperBase;)Ljava/util/Map;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 436
    :catch_0
    move-exception v0

    .line 437
    :try_start_1
    new-instance v2, Landroid/view/InflateException;

    const-string/jumbo v3, "Error inflating menu XML"

    invoke-direct {v2, v3, v0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 441
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_4

    .line 442
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_4
    throw v0

    .line 431
    :pswitch_1
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 441
    :cond_5
    if-eqz v1, :cond_6

    .line 442
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 445
    :cond_6
    return-void

    .line 438
    :catch_1
    move-exception v0

    .line 439
    :try_start_2
    new-instance v2, Landroid/view/InflateException;

    const-string/jumbo v3, "Error inflating menu XML"

    invoke-direct {v2, v3, v0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 399
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public inflate(ILandroid/view/Menu;)V
    .locals 6

    .prologue
    .line 363
    invoke-direct {p0, p1}, Lcom/helpshift/app/g;->a(I)V

    .line 364
    iget-object v0, p0, Lcom/helpshift/app/g;->a:Landroid/view/MenuInflater;

    invoke-virtual {v0, p1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 366
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-interface {p2}, Landroid/view/Menu;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 368
    :try_start_0
    invoke-interface {p2, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    check-cast v0, Lcom/helpshift/app/l;

    .line 369
    invoke-virtual {v0}, Lcom/helpshift/app/l;->getItemId()I

    move-result v3

    .line 370
    iget-object v1, p0, Lcom/helpshift/app/g;->b:Lcom/helpshift/app/ActionBarHelperBase;

    invoke-static {v1}, Lcom/helpshift/app/ActionBarHelperBase;->a(Lcom/helpshift/app/ActionBarHelperBase;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 371
    iget-object v1, p0, Lcom/helpshift/app/g;->b:Lcom/helpshift/app/ActionBarHelperBase;

    invoke-static {v1}, Lcom/helpshift/app/ActionBarHelperBase;->a(Lcom/helpshift/app/ActionBarHelperBase;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 372
    const-string/jumbo v4, "android.widget.SearchView"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 373
    iget-object v1, p0, Lcom/helpshift/app/g;->b:Lcom/helpshift/app/ActionBarHelperBase;

    invoke-static {v1}, Lcom/helpshift/app/ActionBarHelperBase;->b(Lcom/helpshift/app/ActionBarHelperBase;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v4, Lcom/helpshift/h;->n:I

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/helpshift/widget/SimpleSearchView;

    .line 374
    invoke-virtual {v1, v3}, Lcom/helpshift/widget/SimpleSearchView;->setId(I)V

    .line 375
    invoke-virtual {v0, v1}, Lcom/helpshift/app/l;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 379
    :cond_0
    iget-object v1, p0, Lcom/helpshift/app/g;->b:Lcom/helpshift/app/ActionBarHelperBase;

    invoke-static {v1}, Lcom/helpshift/app/ActionBarHelperBase;->c(Lcom/helpshift/app/ActionBarHelperBase;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0}, Lcom/helpshift/app/l;->getItemId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 380
    iget-object v1, p0, Lcom/helpshift/app/g;->b:Lcom/helpshift/app/ActionBarHelperBase;

    invoke-static {v1}, Lcom/helpshift/app/ActionBarHelperBase;->b(Lcom/helpshift/app/ActionBarHelperBase;)Landroid/view/LayoutInflater;

    move-result-object v4

    iget-object v1, p0, Lcom/helpshift/app/g;->b:Lcom/helpshift/app/ActionBarHelperBase;

    invoke-static {v1}, Lcom/helpshift/app/ActionBarHelperBase;->c(Lcom/helpshift/app/ActionBarHelperBase;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0}, Lcom/helpshift/app/l;->getItemId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 381
    invoke-virtual {v1, v3}, Landroid/view/View;->setId(I)V

    .line 382
    invoke-virtual {v0, v1}, Lcom/helpshift/app/l;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    :cond_1
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    .line 384
    :catch_0
    move-exception v0

    .line 385
    invoke-static {}, Lcom/helpshift/app/ActionBarHelperBase;->c()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "ClassCastException on hardware menu button click"

    invoke-static {v1, v3, v0}, Lcom/helpshift/ek;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 388
    :cond_2
    return-void
.end method
