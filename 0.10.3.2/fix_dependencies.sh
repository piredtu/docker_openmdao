#!/bin/bash
rm -rf /usr/local/lib/python3.4/dist-packages/tornado*
rm -rf /usr/local/lib/python3.4/dist-packages/IPython*
rm -rf /usr/local/lib/python3.4/dist-packages/ipython*

rm -rf /usr/local/lib/python2.7/dist-packages/tornado*
rm -rf /usr/local/lib/python2.7/dist-packages/ipython*
rm -rf /usr/local/lib/python2.7/dist-packages/IPython*

rm -rf /usr/lib/python2.7/dist-packages/tornado*
rm -rf /usr/lib/python2.7/dist-packages/ipython*
rm -rf /usr/lib/python2.7/dist-packages/IPython*

rm -rf $OPENMDAODIR/lib/python2.7/site-packages/IPython*
rm -rf $OPENMDAODIR/lib/python2.7/site-packages/ipython*
rm -rf $OPENMDAODIR/lib/python2.7/site-packages/tornado*

pip install -r $INSTALLDIR/requirements.txt
